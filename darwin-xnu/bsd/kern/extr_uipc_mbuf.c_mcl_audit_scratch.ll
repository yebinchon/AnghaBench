; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_mbuf.c_mcl_audit_scratch.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_mbuf.c_mcl_audit_scratch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32* }
%struct.TYPE_7__ = type { i8**, i8**, i32, i32, i64, i64, i32, i32 }
%struct.timeval = type { i32, i32 }

@MCACHE_STACK_DEPTH = common dso_local global i32 0, align 4
@mb_start = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*)* @mcl_audit_scratch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mcl_audit_scratch(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca %struct.timeval, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %7 = load i32, i32* @MCACHE_STACK_DEPTH, align 4
  %8 = add nsw i32 %7, 1
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %3, align 8
  %11 = alloca i8*, i64 %9, align 16
  store i64 %9, i64* %4, align 8
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = icmp ne i32* %14, null
  %16 = zext i1 %15 to i32
  %17 = call i32 @VERIFY(i32 %16)
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %19 = call %struct.TYPE_7__* @MCA_SAVED_SCRATCH_PTR(%struct.TYPE_8__* %18)
  store %struct.TYPE_7__* %19, %struct.TYPE_7__** %5, align 8
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 6
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 7
  store i32 %22, i32* %24, align 4
  %25 = call i32 (...) @current_thread()
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 6
  store i32 %25, i32* %27, align 8
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load i8**, i8*** %29, align 8
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 1
  %33 = load i8**, i8*** %32, align 8
  %34 = call i32 @bcopy(i8** %30, i8** %33, i32 8)
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 4
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 5
  store i64 %37, i64* %39, align 8
  %40 = mul nuw i64 8, %9
  %41 = trunc i64 %40 to i32
  %42 = call i32 @bzero(i8** %11, i32 %41)
  %43 = load i32, i32* @MCACHE_STACK_DEPTH, align 4
  %44 = add nsw i32 %43, 1
  %45 = call i64 @OSBacktrace(i8** %11, i32 %44)
  %46 = sub nsw i64 %45, 1
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 4
  store i64 %46, i64* %48, align 8
  %49 = getelementptr inbounds i8*, i8** %11, i64 1
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = load i8**, i8*** %51, align 8
  %53 = call i32 @bcopy(i8** %49, i8** %52, i32 8)
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 2
  store i32 %56, i32* %58, align 8
  %59 = call i32 @microuptime(%struct.timeval* %6)
  %60 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @mb_start, i32 0, i32 0), align 4
  %63 = sub nsw i32 %61, %62
  %64 = sdiv i32 %63, 1000
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 3
  store i32 %64, i32* %66, align 4
  %67 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @mb_start, i32 0, i32 1), align 4
  %70 = sub nsw i32 %68, %69
  %71 = icmp sgt i32 %70, 0
  br i1 %71, label %72, label %82

72:                                               ; preds = %1
  %73 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @mb_start, i32 0, i32 1), align 4
  %76 = sub nsw i32 %74, %75
  %77 = mul nsw i32 %76, 1000
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = add nsw i32 %80, %77
  store i32 %81, i32* %79, align 4
  br label %82

82:                                               ; preds = %72, %1
  %83 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %83)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @VERIFY(i32) #2

declare dso_local %struct.TYPE_7__* @MCA_SAVED_SCRATCH_PTR(%struct.TYPE_8__*) #2

declare dso_local i32 @current_thread(...) #2

declare dso_local i32 @bcopy(i8**, i8**, i32) #2

declare dso_local i32 @bzero(i8**, i32) #2

declare dso_local i64 @OSBacktrace(i8**, i32) #2

declare dso_local i32 @microuptime(%struct.timeval*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
