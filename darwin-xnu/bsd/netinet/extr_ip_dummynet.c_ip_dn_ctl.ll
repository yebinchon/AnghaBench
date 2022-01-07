; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_ip_dummynet.c_ip_dn_ctl.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_ip_dummynet.c_ip_dn_ctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockopt = type { i64, i32, i32 }
%struct.dn_pipe = type { i32 }

@SOPT_SET = common dso_local global i64 0, align 8
@securelevel = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"dummynet: -- unknown option %d\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sockopt*)* @ip_dn_ctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip_dn_ctl(%struct.sockopt* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sockopt*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dn_pipe*, align 8
  %6 = alloca %struct.dn_pipe, align 4
  store %struct.sockopt* %0, %struct.sockopt** %3, align 8
  store i32 0, i32* %4, align 4
  %7 = load %struct.sockopt*, %struct.sockopt** %3, align 8
  %8 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @SOPT_SET, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = load i32, i32* @securelevel, align 4
  %14 = icmp sge i32 %13, 3
  br i1 %14, label %15, label %17

15:                                               ; preds = %12
  %16 = load i32, i32* @EPERM, align 4
  store i32 %16, i32* %2, align 4
  br label %76

17:                                               ; preds = %12, %1
  %18 = load %struct.sockopt*, %struct.sockopt** %3, align 8
  %19 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  switch i32 %20, label %21 [
    i32 128, label %27
    i32 129, label %30
    i32 131, label %32
    i32 130, label %53
  ]

21:                                               ; preds = %17
  %22 = load %struct.sockopt*, %struct.sockopt** %3, align 8
  %23 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load i32, i32* @EINVAL, align 4
  store i32 %26, i32* %2, align 4
  br label %76

27:                                               ; preds = %17
  %28 = load %struct.sockopt*, %struct.sockopt** %3, align 8
  %29 = call i32 @dummynet_get(%struct.sockopt* %28)
  store i32 %29, i32* %4, align 4
  br label %74

30:                                               ; preds = %17
  %31 = call i32 (...) @dummynet_flush()
  br label %74

32:                                               ; preds = %17
  store %struct.dn_pipe* %6, %struct.dn_pipe** %5, align 8
  %33 = load %struct.sockopt*, %struct.sockopt** %3, align 8
  %34 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @proc_is64bit(i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %32
  %39 = load %struct.sockopt*, %struct.sockopt** %3, align 8
  %40 = load %struct.dn_pipe*, %struct.dn_pipe** %5, align 8
  %41 = call i32 @cp_pipe_from_user_64(%struct.sockopt* %39, %struct.dn_pipe* %40)
  store i32 %41, i32* %4, align 4
  br label %46

42:                                               ; preds = %32
  %43 = load %struct.sockopt*, %struct.sockopt** %3, align 8
  %44 = load %struct.dn_pipe*, %struct.dn_pipe** %5, align 8
  %45 = call i32 @cp_pipe_from_user_32(%struct.sockopt* %43, %struct.dn_pipe* %44)
  store i32 %45, i32* %4, align 4
  br label %46

46:                                               ; preds = %42, %38
  %47 = load i32, i32* %4, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %46
  br label %74

50:                                               ; preds = %46
  %51 = load %struct.dn_pipe*, %struct.dn_pipe** %5, align 8
  %52 = call i32 @config_pipe(%struct.dn_pipe* %51)
  store i32 %52, i32* %4, align 4
  br label %74

53:                                               ; preds = %17
  store %struct.dn_pipe* %6, %struct.dn_pipe** %5, align 8
  %54 = load %struct.sockopt*, %struct.sockopt** %3, align 8
  %55 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @proc_is64bit(i32 %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %53
  %60 = load %struct.sockopt*, %struct.sockopt** %3, align 8
  %61 = load %struct.dn_pipe*, %struct.dn_pipe** %5, align 8
  %62 = call i32 @cp_pipe_from_user_64(%struct.sockopt* %60, %struct.dn_pipe* %61)
  store i32 %62, i32* %4, align 4
  br label %67

63:                                               ; preds = %53
  %64 = load %struct.sockopt*, %struct.sockopt** %3, align 8
  %65 = load %struct.dn_pipe*, %struct.dn_pipe** %5, align 8
  %66 = call i32 @cp_pipe_from_user_32(%struct.sockopt* %64, %struct.dn_pipe* %65)
  store i32 %66, i32* %4, align 4
  br label %67

67:                                               ; preds = %63, %59
  %68 = load i32, i32* %4, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %67
  br label %74

71:                                               ; preds = %67
  %72 = load %struct.dn_pipe*, %struct.dn_pipe** %5, align 8
  %73 = call i32 @delete_pipe(%struct.dn_pipe* %72)
  store i32 %73, i32* %4, align 4
  br label %74

74:                                               ; preds = %71, %70, %50, %49, %30, %27
  %75 = load i32, i32* %4, align 4
  store i32 %75, i32* %2, align 4
  br label %76

76:                                               ; preds = %74, %21, %15
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32 @dummynet_get(%struct.sockopt*) #1

declare dso_local i32 @dummynet_flush(...) #1

declare dso_local i32 @proc_is64bit(i32) #1

declare dso_local i32 @cp_pipe_from_user_64(%struct.sockopt*, %struct.dn_pipe*) #1

declare dso_local i32 @cp_pipe_from_user_32(%struct.sockopt*, %struct.dn_pipe*) #1

declare dso_local i32 @config_pipe(%struct.dn_pipe*) #1

declare dso_local i32 @delete_pipe(%struct.dn_pipe*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
