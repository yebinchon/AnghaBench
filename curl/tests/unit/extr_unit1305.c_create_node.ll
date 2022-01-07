; ModuleID = '/home/carl/AnghaBench/curl/tests/unit/extr_unit1305.c_create_node.c'
source_filename = "/home/carl/AnghaBench/curl/tests/unit/extr_unit1305.c_create_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"%s:%d\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"dummy\00", align 1
@data_key = common dso_local global i32 0, align 4
@CURLE_OUT_OF_MEMORY = common dso_local global i32 0, align 4
@data_node = common dso_local global %struct.TYPE_3__* null, align 8
@CURLE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @create_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_node() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 @aprintf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 0)
  store i32 %2, i32* @data_key, align 4
  %3 = load i32, i32* @data_key, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %0
  %6 = load i32, i32* @CURLE_OUT_OF_MEMORY, align 4
  store i32 %6, i32* %1, align 4
  br label %25

7:                                                ; preds = %0
  %8 = call %struct.TYPE_3__* @calloc(i32 1, i32 4)
  store %struct.TYPE_3__* %8, %struct.TYPE_3__** @data_node, align 8
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** @data_node, align 8
  %10 = icmp ne %struct.TYPE_3__* %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %7
  %12 = load i32, i32* @CURLE_OUT_OF_MEMORY, align 4
  store i32 %12, i32* %1, align 4
  br label %25

13:                                               ; preds = %7
  %14 = call i32 (...) @fake_ai()
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** @data_node, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** @data_node, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %13
  %22 = load i32, i32* @CURLE_OUT_OF_MEMORY, align 4
  store i32 %22, i32* %1, align 4
  br label %25

23:                                               ; preds = %13
  %24 = load i32, i32* @CURLE_OK, align 4
  store i32 %24, i32* %1, align 4
  br label %25

25:                                               ; preds = %23, %21, %11, %5
  %26 = load i32, i32* %1, align 4
  ret i32 %26
}

declare dso_local i32 @aprintf(i8*, i8*, i32) #1

declare dso_local %struct.TYPE_3__* @calloc(i32, i32) #1

declare dso_local i32 @fake_ai(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
