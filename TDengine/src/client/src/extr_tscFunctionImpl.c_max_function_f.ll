; ModuleID = '/home/carl/AnghaBench/TDengine/src/client/src/extr_tscFunctionImpl.c_max_function_f.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/client/src/extr_tscFunctionImpl.c_max_function_f.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i8*, i32, i32, i64 }
%struct.TYPE_9__ = type { i8 }

@DATA_SET_FLAG = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, i32)* @max_function_f to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @max_function_f(%struct.TYPE_10__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i8*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call i8* @GET_INPUT_CHAR_INDEX(%struct.TYPE_10__* %8, i32 %9)
  store i8* %10, i8** %5, align 8
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 3
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %2
  %16 = load i8*, i8** %5, align 8
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @isNull(i8* %16, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %15
  br label %49

23:                                               ; preds = %15, %2
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %25 = call i32 @SET_VAL(%struct.TYPE_10__* %24, i32 1, i32 1)
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @minMax_function_f(%struct.TYPE_10__* %26, i32 %27, i32 0)
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %30 = call %struct.TYPE_9__* @GET_RES_INFO(%struct.TYPE_10__* %29)
  store %struct.TYPE_9__* %30, %struct.TYPE_9__** %6, align 8
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = load i8, i8* @DATA_SET_FLAG, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %34, %36
  br i1 %37, label %38, label %49

38:                                               ; preds = %23
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %41, i64 %45
  store i8* %46, i8** %7, align 8
  %47 = load i8, i8* @DATA_SET_FLAG, align 1
  %48 = load i8*, i8** %7, align 8
  store i8 %47, i8* %48, align 1
  br label %49

49:                                               ; preds = %22, %38, %23
  ret void
}

declare dso_local i8* @GET_INPUT_CHAR_INDEX(%struct.TYPE_10__*, i32) #1

declare dso_local i64 @isNull(i8*, i32) #1

declare dso_local i32 @SET_VAL(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @minMax_function_f(%struct.TYPE_10__*, i32, i32) #1

declare dso_local %struct.TYPE_9__* @GET_RES_INFO(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
