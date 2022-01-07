; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf_ioctl.c_pf_rule_copyin.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf_ioctl.c_pf_rule_copyin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pf_rule = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, %struct.TYPE_4__, i64, i64, %struct.TYPE_3__, i32*, i32*, i32*, i32, i32 }
%struct.TYPE_4__ = type { i32*, i32* }
%struct.TYPE_3__ = type { i32*, i32 }
%struct.proc = type { i32, i32 }

@PFDEV_PFM = common dso_local global i64 0, align 8
@PFRULE_PFM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pf_rule*, %struct.pf_rule*, %struct.proc*, i32)* @pf_rule_copyin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pf_rule_copyin(%struct.pf_rule* %0, %struct.pf_rule* %1, %struct.proc* %2, i32 %3) #0 {
  %5 = alloca %struct.pf_rule*, align 8
  %6 = alloca %struct.pf_rule*, align 8
  %7 = alloca %struct.proc*, align 8
  %8 = alloca i32, align 4
  store %struct.pf_rule* %0, %struct.pf_rule** %5, align 8
  store %struct.pf_rule* %1, %struct.pf_rule** %6, align 8
  store %struct.proc* %2, %struct.proc** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load %struct.pf_rule*, %struct.pf_rule** %5, align 8
  %10 = load %struct.pf_rule*, %struct.pf_rule** %6, align 8
  %11 = call i32 @bcopy(%struct.pf_rule* %9, %struct.pf_rule* %10, i32 144)
  %12 = load %struct.pf_rule*, %struct.pf_rule** %6, align 8
  %13 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 7
  store i8 0, i8* %15, align 1
  %16 = load %struct.pf_rule*, %struct.pf_rule** %6, align 8
  %17 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %16, i32 0, i32 1
  %18 = load i8*, i8** %17, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 7
  store i8 0, i8* %19, align 1
  %20 = load %struct.pf_rule*, %struct.pf_rule** %6, align 8
  %21 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %20, i32 0, i32 2
  %22 = load i8*, i8** %21, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 7
  store i8 0, i8* %23, align 1
  %24 = load %struct.pf_rule*, %struct.pf_rule** %6, align 8
  %25 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %24, i32 0, i32 3
  %26 = load i8*, i8** %25, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 7
  store i8 0, i8* %27, align 1
  %28 = load %struct.pf_rule*, %struct.pf_rule** %6, align 8
  %29 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %28, i32 0, i32 4
  %30 = load i8*, i8** %29, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 7
  store i8 0, i8* %31, align 1
  %32 = load %struct.pf_rule*, %struct.pf_rule** %6, align 8
  %33 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %32, i32 0, i32 5
  %34 = load i8*, i8** %33, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 7
  store i8 0, i8* %35, align 1
  %36 = load %struct.pf_rule*, %struct.pf_rule** %6, align 8
  %37 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %36, i32 0, i32 6
  %38 = load i8*, i8** %37, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 7
  store i8 0, i8* %39, align 1
  %40 = load %struct.proc*, %struct.proc** %7, align 8
  %41 = getelementptr inbounds %struct.proc, %struct.proc* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @kauth_cred_getuid(i32 %42)
  %44 = load %struct.pf_rule*, %struct.pf_rule** %6, align 8
  %45 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %44, i32 0, i32 16
  store i32 %43, i32* %45, align 4
  %46 = load %struct.proc*, %struct.proc** %7, align 8
  %47 = getelementptr inbounds %struct.proc, %struct.proc* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.pf_rule*, %struct.pf_rule** %6, align 8
  %50 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %49, i32 0, i32 15
  store i32 %48, i32* %50, align 8
  %51 = load %struct.pf_rule*, %struct.pf_rule** %6, align 8
  %52 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %51, i32 0, i32 14
  store i32* null, i32** %52, align 8
  %53 = load %struct.pf_rule*, %struct.pf_rule** %6, align 8
  %54 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %53, i32 0, i32 13
  store i32* null, i32** %54, align 8
  %55 = load %struct.pf_rule*, %struct.pf_rule** %6, align 8
  %56 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %55, i32 0, i32 12
  store i32* null, i32** %56, align 8
  %57 = load %struct.pf_rule*, %struct.pf_rule** %6, align 8
  %58 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %57, i32 0, i32 11
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 1
  %60 = call i32 @TAILQ_INIT(i32* %59)
  %61 = load %struct.pf_rule*, %struct.pf_rule** %6, align 8
  %62 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %61, i32 0, i32 11
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  store i32* null, i32** %63, align 8
  %64 = load %struct.pf_rule*, %struct.pf_rule** %6, align 8
  %65 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %64, i32 0, i32 10
  store i64 0, i64* %65, align 8
  %66 = load %struct.pf_rule*, %struct.pf_rule** %6, align 8
  %67 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %66, i32 0, i32 9
  store i64 0, i64* %67, align 8
  %68 = load %struct.pf_rule*, %struct.pf_rule** %6, align 8
  %69 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %68, i32 0, i32 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 1
  store i32* null, i32** %70, align 8
  %71 = load %struct.pf_rule*, %struct.pf_rule** %6, align 8
  %72 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %71, i32 0, i32 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  store i32* null, i32** %73, align 8
  %74 = load i32, i32* %8, align 4
  %75 = sext i32 %74 to i64
  %76 = load i64, i64* @PFDEV_PFM, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %84

78:                                               ; preds = %4
  %79 = load i32, i32* @PFRULE_PFM, align 4
  %80 = load %struct.pf_rule*, %struct.pf_rule** %6, align 8
  %81 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %80, i32 0, i32 7
  %82 = load i32, i32* %81, align 8
  %83 = or i32 %82, %79
  store i32 %83, i32* %81, align 8
  br label %84

84:                                               ; preds = %78, %4
  ret void
}

declare dso_local i32 @bcopy(%struct.pf_rule*, %struct.pf_rule*, i32) #1

declare dso_local i32 @kauth_cred_getuid(i32) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
