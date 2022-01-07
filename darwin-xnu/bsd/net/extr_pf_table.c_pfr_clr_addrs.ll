; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf_table.c_pfr_clr_addrs.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf_table.c_pfr_clr_addrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pfr_table = type { i32 }
%struct.pfr_ktable = type { i32, i32 }
%struct.pfr_kentryworkq = type { i32 }

@PFR_FLAG_ATOMIC = common dso_local global i32 0, align 4
@PFR_FLAG_DUMMY = common dso_local global i32 0, align 4
@PFR_FLAG_USERIOCTL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@PFR_TFLAG_ACTIVE = common dso_local global i32 0, align 4
@ESRCH = common dso_local global i32 0, align 4
@PFR_TFLAG_CONST = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"pfr_clr_addrs: corruption detected (%d).\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pfr_clr_addrs(%struct.pfr_table* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pfr_table*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.pfr_ktable*, align 8
  %9 = alloca %struct.pfr_kentryworkq, align 4
  store %struct.pfr_table* %0, %struct.pfr_table** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = load i32, i32* @PFR_FLAG_ATOMIC, align 4
  %12 = load i32, i32* @PFR_FLAG_DUMMY, align 4
  %13 = or i32 %11, %12
  %14 = call i32 @ACCEPT_FLAGS(i32 %10, i32 %13)
  %15 = load %struct.pfr_table*, %struct.pfr_table** %5, align 8
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @PFR_FLAG_USERIOCTL, align 4
  %18 = and i32 %16, %17
  %19 = call i64 @pfr_validate_table(%struct.pfr_table* %15, i32 0, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load i32, i32* @EINVAL, align 4
  store i32 %22, i32* %4, align 4
  br label %70

23:                                               ; preds = %3
  %24 = load %struct.pfr_table*, %struct.pfr_table** %5, align 8
  %25 = call %struct.pfr_ktable* @pfr_lookup_table(%struct.pfr_table* %24)
  store %struct.pfr_ktable* %25, %struct.pfr_ktable** %8, align 8
  %26 = load %struct.pfr_ktable*, %struct.pfr_ktable** %8, align 8
  %27 = icmp eq %struct.pfr_ktable* %26, null
  br i1 %27, label %35, label %28

28:                                               ; preds = %23
  %29 = load %struct.pfr_ktable*, %struct.pfr_ktable** %8, align 8
  %30 = getelementptr inbounds %struct.pfr_ktable, %struct.pfr_ktable* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @PFR_TFLAG_ACTIVE, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %28, %23
  %36 = load i32, i32* @ESRCH, align 4
  store i32 %36, i32* %4, align 4
  br label %70

37:                                               ; preds = %28
  %38 = load %struct.pfr_ktable*, %struct.pfr_ktable** %8, align 8
  %39 = getelementptr inbounds %struct.pfr_ktable, %struct.pfr_ktable* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @PFR_TFLAG_CONST, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %37
  %45 = load i32, i32* @EPERM, align 4
  store i32 %45, i32* %4, align 4
  br label %70

46:                                               ; preds = %37
  %47 = load %struct.pfr_ktable*, %struct.pfr_ktable** %8, align 8
  %48 = load i32*, i32** %6, align 8
  %49 = call i32 @pfr_enqueue_addrs(%struct.pfr_ktable* %47, %struct.pfr_kentryworkq* %9, i32* %48, i32 0)
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* @PFR_FLAG_DUMMY, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %69, label %54

54:                                               ; preds = %46
  %55 = load %struct.pfr_ktable*, %struct.pfr_ktable** %8, align 8
  %56 = call i32 @pfr_remove_kentries(%struct.pfr_ktable* %55, %struct.pfr_kentryworkq* %9)
  %57 = load %struct.pfr_ktable*, %struct.pfr_ktable** %8, align 8
  %58 = getelementptr inbounds %struct.pfr_ktable, %struct.pfr_ktable* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %54
  %62 = load %struct.pfr_ktable*, %struct.pfr_ktable** %8, align 8
  %63 = getelementptr inbounds %struct.pfr_ktable, %struct.pfr_ktable* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %64)
  %66 = load %struct.pfr_ktable*, %struct.pfr_ktable** %8, align 8
  %67 = getelementptr inbounds %struct.pfr_ktable, %struct.pfr_ktable* %66, i32 0, i32 1
  store i32 0, i32* %67, align 4
  br label %68

68:                                               ; preds = %61, %54
  br label %69

69:                                               ; preds = %68, %46
  store i32 0, i32* %4, align 4
  br label %70

70:                                               ; preds = %69, %44, %35, %21
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

declare dso_local i32 @ACCEPT_FLAGS(i32, i32) #1

declare dso_local i64 @pfr_validate_table(%struct.pfr_table*, i32, i32) #1

declare dso_local %struct.pfr_ktable* @pfr_lookup_table(%struct.pfr_table*) #1

declare dso_local i32 @pfr_enqueue_addrs(%struct.pfr_ktable*, %struct.pfr_kentryworkq*, i32*, i32) #1

declare dso_local i32 @pfr_remove_kentries(%struct.pfr_ktable*, %struct.pfr_kentryworkq*) #1

declare dso_local i32 @printf(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
