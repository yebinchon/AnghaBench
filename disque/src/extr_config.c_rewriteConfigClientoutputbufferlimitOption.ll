; ModuleID = '/home/carl/AnghaBench/disque/src/extr_config.c_rewriteConfigClientoutputbufferlimitOption.c'
source_filename = "/home/carl/AnghaBench/disque/src/extr_config.c_rewriteConfigClientoutputbufferlimitOption.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i64, i64 }
%struct.TYPE_6__ = type { i64, i64, i64 }
%struct.rewriteConfigState = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"client-output-buffer-limit\00", align 1
@CLIENT_TYPE_COUNT = common dso_local global i32 0, align 4
@server = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@clientBufferLimitsDefaults = common dso_local global %struct.TYPE_6__* null, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"%s %s %s %s %ld\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rewriteConfigClientoutputbufferlimitOption(%struct.rewriteConfigState* %0) #0 {
  %2 = alloca %struct.rewriteConfigState*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [64 x i8], align 16
  %8 = alloca [64 x i8], align 16
  store %struct.rewriteConfigState* %0, %struct.rewriteConfigState** %2, align 8
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  store i32 0, i32* %3, align 4
  br label %9

9:                                                ; preds = %92, %1
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @CLIENT_TYPE_COUNT, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %95

13:                                               ; preds = %9
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @server, i32 0, i32 0), align 8
  %15 = load i32, i32* %3, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** @clientBufferLimitsDefaults, align 8
  %21 = load i32, i32* %3, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %19, %25
  br i1 %26, label %55, label %27

27:                                               ; preds = %13
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @server, i32 0, i32 0), align 8
  %29 = load i32, i32* %3, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** @clientBufferLimitsDefaults, align 8
  %35 = load i32, i32* %3, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %33, %39
  br i1 %40, label %55, label %41

41:                                               ; preds = %27
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @server, i32 0, i32 0), align 8
  %43 = load i32, i32* %3, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** @clientBufferLimitsDefaults, align 8
  %49 = load i32, i32* %3, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %47, %53
  br label %55

55:                                               ; preds = %41, %27, %13
  %56 = phi i1 [ true, %27 ], [ true, %13 ], [ %54, %41 ]
  %57 = zext i1 %56 to i32
  store i32 %57, i32* %5, align 4
  %58 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @server, i32 0, i32 0), align 8
  %60 = load i32, i32* %3, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = call i32 @rewriteConfigFormatMemory(i8* %58, i32 64, i64 %64)
  %66 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @server, i32 0, i32 0), align 8
  %68 = load i32, i32* %3, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = call i32 @rewriteConfigFormatMemory(i8* %66, i32 64, i64 %72)
  %74 = call i32 (...) @sdsempty()
  %75 = load i8*, i8** %4, align 8
  %76 = load i32, i32* %3, align 4
  %77 = call i32 @getClientTypeName(i32 %76)
  %78 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %79 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @server, i32 0, i32 0), align 8
  %81 = load i32, i32* %3, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = call i32 @sdscatprintf(i32 %74, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* %75, i32 %77, i8* %78, i8* %79, i64 %85)
  store i32 %86, i32* %6, align 4
  %87 = load %struct.rewriteConfigState*, %struct.rewriteConfigState** %2, align 8
  %88 = load i8*, i8** %4, align 8
  %89 = load i32, i32* %6, align 4
  %90 = load i32, i32* %5, align 4
  %91 = call i32 @rewriteConfigRewriteLine(%struct.rewriteConfigState* %87, i8* %88, i32 %89, i32 %90)
  br label %92

92:                                               ; preds = %55
  %93 = load i32, i32* %3, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %3, align 4
  br label %9

95:                                               ; preds = %9
  ret void
}

declare dso_local i32 @rewriteConfigFormatMemory(i8*, i32, i64) #1

declare dso_local i32 @sdscatprintf(i32, i8*, i8*, i32, i8*, i8*, i64) #1

declare dso_local i32 @sdsempty(...) #1

declare dso_local i32 @getClientTypeName(i32) #1

declare dso_local i32 @rewriteConfigRewriteLine(%struct.rewriteConfigState*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
