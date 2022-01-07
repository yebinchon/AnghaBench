; ModuleID = '/home/carl/AnghaBench/disque/src/extr_config.c_rewriteConfigRewriteLine.c'
source_filename = "/home/carl/AnghaBench/disque/src/extr_config.c_rewriteConfigRewriteLine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rewriteConfigState = type { i32, i32*, i32 }
%struct.TYPE_4__ = type { i64 }

@DISQUE_CONFIG_REWRITE_SIGNATURE = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rewriteConfigRewriteLine(%struct.rewriteConfigState* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.rewriteConfigState*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_4__*, align 8
  %12 = alloca i32, align 4
  store %struct.rewriteConfigState* %0, %struct.rewriteConfigState** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load i8*, i8** %6, align 8
  %14 = call i32 @sdsnew(i8* %13)
  store i32 %14, i32* %9, align 4
  %15 = load %struct.rewriteConfigState*, %struct.rewriteConfigState** %5, align 8
  %16 = getelementptr inbounds %struct.rewriteConfigState, %struct.rewriteConfigState* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* %9, align 4
  %19 = call i32* @dictFetchValue(i32 %17, i32 %18)
  store i32* %19, i32** %10, align 8
  %20 = load %struct.rewriteConfigState*, %struct.rewriteConfigState** %5, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = call i32 @rewriteConfigMarkAsProcessed(%struct.rewriteConfigState* %20, i8* %21)
  %23 = load i32*, i32** %10, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %33, label %25

25:                                               ; preds = %4
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %25
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @sdsfree(i32 %29)
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @sdsfree(i32 %31)
  br label %90

33:                                               ; preds = %25, %4
  %34 = load i32*, i32** %10, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %71

36:                                               ; preds = %33
  %37 = load i32*, i32** %10, align 8
  %38 = call %struct.TYPE_4__* @listFirst(i32* %37)
  store %struct.TYPE_4__* %38, %struct.TYPE_4__** %11, align 8
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %12, align 4
  %43 = load i32*, i32** %10, align 8
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %45 = call i32 @listDelNode(i32* %43, %struct.TYPE_4__* %44)
  %46 = load i32*, i32** %10, align 8
  %47 = call i64 @listLength(i32* %46)
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %36
  %50 = load %struct.rewriteConfigState*, %struct.rewriteConfigState** %5, align 8
  %51 = getelementptr inbounds %struct.rewriteConfigState, %struct.rewriteConfigState* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* %9, align 4
  %54 = call i32 @dictDelete(i32 %52, i32 %53)
  br label %55

55:                                               ; preds = %49, %36
  %56 = load %struct.rewriteConfigState*, %struct.rewriteConfigState** %5, align 8
  %57 = getelementptr inbounds %struct.rewriteConfigState, %struct.rewriteConfigState* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %12, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @sdsfree(i32 %62)
  %64 = load i32, i32* %7, align 4
  %65 = load %struct.rewriteConfigState*, %struct.rewriteConfigState** %5, align 8
  %66 = getelementptr inbounds %struct.rewriteConfigState, %struct.rewriteConfigState* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %12, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  store i32 %64, i32* %70, align 4
  br label %87

71:                                               ; preds = %33
  %72 = load %struct.rewriteConfigState*, %struct.rewriteConfigState** %5, align 8
  %73 = getelementptr inbounds %struct.rewriteConfigState, %struct.rewriteConfigState* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %83, label %76

76:                                               ; preds = %71
  %77 = load %struct.rewriteConfigState*, %struct.rewriteConfigState** %5, align 8
  %78 = load i8*, i8** @DISQUE_CONFIG_REWRITE_SIGNATURE, align 8
  %79 = call i32 @sdsnew(i8* %78)
  %80 = call i32 @rewriteConfigAppendLine(%struct.rewriteConfigState* %77, i32 %79)
  %81 = load %struct.rewriteConfigState*, %struct.rewriteConfigState** %5, align 8
  %82 = getelementptr inbounds %struct.rewriteConfigState, %struct.rewriteConfigState* %81, i32 0, i32 0
  store i32 1, i32* %82, align 8
  br label %83

83:                                               ; preds = %76, %71
  %84 = load %struct.rewriteConfigState*, %struct.rewriteConfigState** %5, align 8
  %85 = load i32, i32* %7, align 4
  %86 = call i32 @rewriteConfigAppendLine(%struct.rewriteConfigState* %84, i32 %85)
  br label %87

87:                                               ; preds = %83, %55
  %88 = load i32, i32* %9, align 4
  %89 = call i32 @sdsfree(i32 %88)
  br label %90

90:                                               ; preds = %87, %28
  ret void
}

declare dso_local i32 @sdsnew(i8*) #1

declare dso_local i32* @dictFetchValue(i32, i32) #1

declare dso_local i32 @rewriteConfigMarkAsProcessed(%struct.rewriteConfigState*, i8*) #1

declare dso_local i32 @sdsfree(i32) #1

declare dso_local %struct.TYPE_4__* @listFirst(i32*) #1

declare dso_local i32 @listDelNode(i32*, %struct.TYPE_4__*) #1

declare dso_local i64 @listLength(i32*) #1

declare dso_local i32 @dictDelete(i32, i32) #1

declare dso_local i32 @rewriteConfigAppendLine(%struct.rewriteConfigState*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
