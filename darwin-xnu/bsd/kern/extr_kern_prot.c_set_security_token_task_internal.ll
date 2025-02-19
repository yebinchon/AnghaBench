; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_prot.c_set_security_token_task_internal.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_prot.c_set_security_token_task_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i32, i32 }
%struct.TYPE_24__ = type { i64* }
%struct.TYPE_28__ = type { i32* }
%struct.TYPE_27__ = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i32, i32 }
%struct.TYPE_26__ = type { i32, i32, i32, i32 }
%struct.TYPE_23__ = type { i32 }

@UT_VFORK = common dso_local global i32 0, align 4
@HOST_PRIV_NULL = common dso_local global i64 0, align 8
@KERN_SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @set_security_token_task_internal(%struct.TYPE_25__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_25__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_24__, align 8
  %7 = alloca %struct.TYPE_28__, align 8
  %8 = alloca %struct.TYPE_27__*, align 8
  %9 = alloca %struct.TYPE_26__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_23__*, align 8
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %4, align 8
  store i8* %1, i8** %5, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = ptrtoint i8* %13 to i64
  store i64 %14, i64* %11, align 8
  %15 = load i64, i64* %11, align 8
  %16 = call i64 (...) @current_task()
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %30

18:                                               ; preds = %2
  %19 = call i32 (...) @current_thread()
  %20 = call i64 @get_bsdthread_info(i32 %19)
  %21 = inttoptr i64 %20 to %struct.TYPE_23__*
  store %struct.TYPE_23__* %21, %struct.TYPE_23__** %12, align 8
  %22 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %23 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @UT_VFORK, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %18
  store i32 1, i32* %3, align 4
  br label %134

29:                                               ; preds = %18
  br label %30

30:                                               ; preds = %29, %2
  %31 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %32 = call %struct.TYPE_27__* @kauth_cred_proc_ref(%struct.TYPE_25__* %31)
  store %struct.TYPE_27__* %32, %struct.TYPE_27__** %8, align 8
  %33 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %34 = call %struct.TYPE_26__* @posix_cred_get(%struct.TYPE_27__* %33)
  store %struct.TYPE_26__* %34, %struct.TYPE_26__** %9, align 8
  %35 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %36 = call i64 @IS_VALID_CRED(%struct.TYPE_27__* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %49

38:                                               ; preds = %30
  %39 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %40 = call i64 @kauth_cred_getuid(%struct.TYPE_27__* %39)
  %41 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %6, i32 0, i32 0
  %42 = load i64*, i64** %41, align 8
  %43 = getelementptr inbounds i64, i64* %42, i64 0
  store i64 %40, i64* %43, align 8
  %44 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %45 = call i64 @kauth_cred_getgid(%struct.TYPE_27__* %44)
  %46 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %6, i32 0, i32 0
  %47 = load i64*, i64** %46, align 8
  %48 = getelementptr inbounds i64, i64* %47, i64 1
  store i64 %45, i64* %48, align 8
  br label %56

49:                                               ; preds = %30
  %50 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %6, i32 0, i32 0
  %51 = load i64*, i64** %50, align 8
  %52 = getelementptr inbounds i64, i64* %51, i64 0
  store i64 0, i64* %52, align 8
  %53 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %6, i32 0, i32 0
  %54 = load i64*, i64** %53, align 8
  %55 = getelementptr inbounds i64, i64* %54, i64 1
  store i64 0, i64* %55, align 8
  br label %56

56:                                               ; preds = %49, %38
  %57 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_21__*, %struct.TYPE_21__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %7, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 0
  store i32 %62, i32* %65, align 4
  %66 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %67 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %7, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 1
  store i32 %68, i32* %71, align 4
  %72 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %73 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %7, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 2
  store i32 %74, i32* %77, align 4
  %78 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %79 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %7, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 3
  store i32 %80, i32* %83, align 4
  %84 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %85 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %7, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 4
  store i32 %86, i32* %89, align 4
  %90 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %7, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 5
  store i32 %92, i32* %95, align 4
  %96 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %97, i32 0, i32 0
  %99 = load %struct.TYPE_21__*, %struct.TYPE_21__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %7, i32 0, i32 0
  %103 = load i32*, i32** %102, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 6
  store i32 %101, i32* %104, align 4
  %105 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %7, i32 0, i32 0
  %109 = load i32*, i32** %108, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 7
  store i32 %107, i32* %110, align 4
  %111 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %6, i32 0, i32 0
  %112 = load i64*, i64** %111, align 8
  %113 = getelementptr inbounds i64, i64* %112, i64 0
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %56
  %117 = load i64, i64* @HOST_PRIV_NULL, align 8
  br label %120

118:                                              ; preds = %56
  %119 = call i64 (...) @host_priv_self()
  br label %120

120:                                              ; preds = %118, %116
  %121 = phi i64 [ %117, %116 ], [ %119, %118 ]
  store i64 %121, i64* %10, align 8
  %122 = call i32 @kauth_cred_unref(%struct.TYPE_27__** %8)
  %123 = call i32 (...) @host_security_self()
  %124 = load i64, i64* %11, align 8
  %125 = load i64, i64* %10, align 8
  %126 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %6, i32 0, i32 0
  %127 = load i64*, i64** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %7, i32 0, i32 0
  %129 = load i32*, i32** %128, align 8
  %130 = call i64 @host_security_set_task_token(i32 %123, i64 %124, i64* %127, i32* %129, i64 %125)
  %131 = load i64, i64* @KERN_SUCCESS, align 8
  %132 = icmp ne i64 %130, %131
  %133 = zext i1 %132 to i32
  store i32 %133, i32* %3, align 4
  br label %134

134:                                              ; preds = %120, %28
  %135 = load i32, i32* %3, align 4
  ret i32 %135
}

declare dso_local i64 @current_task(...) #1

declare dso_local i64 @get_bsdthread_info(i32) #1

declare dso_local i32 @current_thread(...) #1

declare dso_local %struct.TYPE_27__* @kauth_cred_proc_ref(%struct.TYPE_25__*) #1

declare dso_local %struct.TYPE_26__* @posix_cred_get(%struct.TYPE_27__*) #1

declare dso_local i64 @IS_VALID_CRED(%struct.TYPE_27__*) #1

declare dso_local i64 @kauth_cred_getuid(%struct.TYPE_27__*) #1

declare dso_local i64 @kauth_cred_getgid(%struct.TYPE_27__*) #1

declare dso_local i64 @host_priv_self(...) #1

declare dso_local i32 @kauth_cred_unref(%struct.TYPE_27__**) #1

declare dso_local i64 @host_security_set_task_token(i32, i64, i64*, i32*, i64) #1

declare dso_local i32 @host_security_self(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
