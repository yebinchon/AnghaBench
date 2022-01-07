; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_sig.c_cansignal_nomac.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_sig.c_cansignal_nomac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.session* }
%struct.session = type { i32 }

@SIGKILL = common dso_local global i32 0, align 4
@initproc = common dso_local global %struct.TYPE_7__* null, align 8
@SESSION_NULL = common dso_local global %struct.session* null, align 8
@PGRP_NULL = common dso_local global %struct.TYPE_8__* null, align 8
@SIGCONT = common dso_local global i32 0, align 4
@NOCRED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i64, %struct.TYPE_7__*, i32)* @cansignal_nomac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cansignal_nomac(%struct.TYPE_7__* %0, i64 %1, %struct.TYPE_7__* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.session*, align 8
  %11 = alloca %struct.session*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %17 = icmp eq %struct.TYPE_7__* %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %4
  store i32 1, i32* %5, align 4
  br label %108

19:                                               ; preds = %4
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* @SIGKILL, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %28

23:                                               ; preds = %19
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** @initproc, align 8
  %26 = icmp eq %struct.TYPE_7__* %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  store i32 0, i32* %5, align 4
  br label %108

28:                                               ; preds = %23, %19
  %29 = load i64, i64* %7, align 8
  %30 = call i64 @kauth_cred_issuser(i64 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  store i32 1, i32* %5, align 4
  br label %108

33:                                               ; preds = %28
  %34 = load %struct.session*, %struct.session** @SESSION_NULL, align 8
  store %struct.session* %34, %struct.session** %10, align 8
  %35 = load %struct.session*, %struct.session** @SESSION_NULL, align 8
  store %struct.session* %35, %struct.session** %11, align 8
  %36 = call i32 (...) @proc_list_lock()
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %38, align 8
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** @PGRP_NULL, align 8
  %41 = icmp ne %struct.TYPE_8__* %39, %40
  br i1 %41, label %42, label %48

42:                                               ; preds = %33
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = load %struct.session*, %struct.session** %46, align 8
  store %struct.session* %47, %struct.session** %10, align 8
  br label %48

48:                                               ; preds = %42, %33
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %50, align 8
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** @PGRP_NULL, align 8
  %53 = icmp ne %struct.TYPE_8__* %51, %52
  br i1 %53, label %54, label %60

54:                                               ; preds = %48
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = load %struct.session*, %struct.session** %58, align 8
  store %struct.session* %59, %struct.session** %11, align 8
  br label %60

60:                                               ; preds = %54, %48
  %61 = call i32 (...) @proc_list_unlock()
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* @SIGCONT, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %70

65:                                               ; preds = %60
  %66 = load %struct.session*, %struct.session** %10, align 8
  %67 = load %struct.session*, %struct.session** %11, align 8
  %68 = icmp eq %struct.session* %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %65
  store i32 1, i32* %5, align 4
  br label %108

70:                                               ; preds = %65, %60
  store i32 0, i32* %12, align 4
  %71 = load i64, i64* @NOCRED, align 8
  store i64 %71, i64* %13, align 8
  %72 = load i64, i64* @NOCRED, align 8
  store i64 %72, i64* %14, align 8
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %74 = call i64 @kauth_cred_proc_ref(%struct.TYPE_7__* %73)
  store i64 %74, i64* %14, align 8
  store i64 %74, i64* %13, align 8
  %75 = load i64, i64* %7, align 8
  %76 = call i64 @kauth_cred_getruid(i64 %75)
  %77 = load i64, i64* %13, align 8
  %78 = call i64 @kauth_cred_getruid(i64 %77)
  %79 = icmp eq i64 %76, %78
  br i1 %79, label %98, label %80

80:                                               ; preds = %70
  %81 = load i64, i64* %7, align 8
  %82 = call i64 @kauth_cred_getruid(i64 %81)
  %83 = load i64, i64* %13, align 8
  %84 = call i64 @kauth_cred_getsvuid(i64 %83)
  %85 = icmp eq i64 %82, %84
  br i1 %85, label %98, label %86

86:                                               ; preds = %80
  %87 = load i64, i64* %7, align 8
  %88 = call i64 @kauth_cred_getuid(i64 %87)
  %89 = load i64, i64* %13, align 8
  %90 = call i64 @kauth_cred_getruid(i64 %89)
  %91 = icmp eq i64 %88, %90
  br i1 %91, label %98, label %92

92:                                               ; preds = %86
  %93 = load i64, i64* %7, align 8
  %94 = call i64 @kauth_cred_getuid(i64 %93)
  %95 = load i64, i64* %13, align 8
  %96 = call i64 @kauth_cred_getsvuid(i64 %95)
  %97 = icmp eq i64 %94, %96
  br i1 %97, label %98, label %99

98:                                               ; preds = %92, %86, %80, %70
  store i32 1, i32* %12, align 4
  br label %99

99:                                               ; preds = %98, %92
  %100 = load i64, i64* %14, align 8
  %101 = load i64, i64* @NOCRED, align 8
  %102 = icmp ne i64 %100, %101
  br i1 %102, label %103, label %106

103:                                              ; preds = %99
  %104 = call i32 @kauth_cred_unref(i64* %14)
  %105 = load i64, i64* @NOCRED, align 8
  store i64 %105, i64* %14, align 8
  br label %106

106:                                              ; preds = %103, %99
  %107 = load i32, i32* %12, align 4
  store i32 %107, i32* %5, align 4
  br label %108

108:                                              ; preds = %106, %69, %32, %27, %18
  %109 = load i32, i32* %5, align 4
  ret i32 %109
}

declare dso_local i64 @kauth_cred_issuser(i64) #1

declare dso_local i32 @proc_list_lock(...) #1

declare dso_local i32 @proc_list_unlock(...) #1

declare dso_local i64 @kauth_cred_proc_ref(%struct.TYPE_7__*) #1

declare dso_local i64 @kauth_cred_getruid(i64) #1

declare dso_local i64 @kauth_cred_getsvuid(i64) #1

declare dso_local i64 @kauth_cred_getuid(i64) #1

declare dso_local i32 @kauth_cred_unref(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
