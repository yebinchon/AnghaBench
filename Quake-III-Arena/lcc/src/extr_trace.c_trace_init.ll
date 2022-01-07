; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/lcc/src/extr_trace.c_trace_init.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/lcc/src/extr_trace.c_trace_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i64 }

@trace_init.inited = internal global i32 0, align 4
@IR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"-t\00", align 1
@EXTERN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"printf\00", align 1
@inttype = common dso_local global i32 0, align 4
@CONST = common dso_local global i32 0, align 4
@chartype = common dso_local global i32 0, align 4
@tracecall = common dso_local global i64 0, align 8
@events = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@tracereturn = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @trace_init(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %7 = load i32, i32* @trace_init.inited, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  br label %80

10:                                               ; preds = %2
  store i32 1, i32* @trace_init.inited, align 4
  %11 = load i32, i32* %3, align 4
  %12 = load i8**, i8*** %4, align 8
  %13 = call i32 @type_init(i32 %11, i8** %12)
  %14 = load i64, i64* @IR, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %80

16:                                               ; preds = %10
  store i32 1, i32* %5, align 4
  br label %17

17:                                               ; preds = %76, %16
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* %3, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %79

21:                                               ; preds = %17
  %22 = load i8**, i8*** %4, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8*, i8** %22, i64 %24
  %26 = load i8*, i8** %25, align 8
  %27 = call i64 @strncmp(i8* %26, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 2)
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %75

29:                                               ; preds = %21
  %30 = load i8**, i8*** %4, align 8
  %31 = load i32, i32* %5, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8*, i8** %30, i64 %32
  %34 = load i8*, i8** %33, align 8
  %35 = call i32* @strchr(i8* %34, i8 signext 61)
  %36 = icmp eq i32* %35, null
  br i1 %36, label %37, label %75

37:                                               ; preds = %29
  %38 = load i32, i32* @EXTERN, align 4
  %39 = load i8**, i8*** %4, align 8
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8*, i8** %39, i64 %41
  %43 = load i8*, i8** %42, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 2
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %37
  %49 = load i8**, i8*** %4, align 8
  %50 = load i32, i32* %5, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8*, i8** %49, i64 %51
  %53 = load i8*, i8** %52, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 2
  br label %56

55:                                               ; preds = %37
  br label %56

56:                                               ; preds = %55, %48
  %57 = phi i8* [ %54, %48 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), %55 ]
  %58 = load i32, i32* @inttype, align 4
  %59 = load i32, i32* @CONST, align 4
  %60 = load i32, i32* @chartype, align 4
  %61 = call i32 @qual(i32 %59, i32 %60)
  %62 = call i32 @ptr(i32 %61)
  %63 = call i32 @ftype(i32 %58, i32 %62)
  %64 = call %struct.TYPE_5__* @mksymbol(i32 %38, i8* %57, i32 %63)
  store %struct.TYPE_5__* %64, %struct.TYPE_5__** %6, align 8
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  store i64 0, i64* %66, align 8
  %67 = load i64, i64* @tracecall, align 8
  %68 = trunc i64 %67 to i32
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %70 = call i32 @attach(i32 %68, %struct.TYPE_5__* %69, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @events, i32 0, i32 1))
  %71 = load i64, i64* @tracereturn, align 8
  %72 = trunc i64 %71 to i32
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %74 = call i32 @attach(i32 %72, %struct.TYPE_5__* %73, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @events, i32 0, i32 0))
  br label %79

75:                                               ; preds = %29, %21
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %5, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %5, align 4
  br label %17

79:                                               ; preds = %56, %17
  br label %80

80:                                               ; preds = %9, %79, %10
  ret void
}

declare dso_local i32 @type_init(i32, i8**) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32* @strchr(i8*, i8 signext) #1

declare dso_local %struct.TYPE_5__* @mksymbol(i32, i8*, i32) #1

declare dso_local i32 @ftype(i32, i32) #1

declare dso_local i32 @ptr(i32) #1

declare dso_local i32 @qual(i32, i32) #1

declare dso_local i32 @attach(i32, %struct.TYPE_5__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
