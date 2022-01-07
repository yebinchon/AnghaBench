; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/gatt/extr_gatt_utils.c_gatt_is_bda_in_the_srv_chg_clt_list.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/gatt/extr_gatt_utils.c_gatt_is_bda_in_the_srv_chg_clt_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [67 x i8] c"gatt_is_bda_in_the_srv_chg_clt_list :%02x-%02x-%02x-%02x-%02x-%02x\00", align 1
@gatt_cb = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@BD_ADDR_LEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"bda is in the srv chg clt list\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_4__* @gatt_is_bda_in_the_srv_chg_clt_list(i32* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %4, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = getelementptr inbounds i32, i32* %7, i64 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32*, i32** %3, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 1
  %12 = load i32, i32* %11, align 4
  %13 = load i32*, i32** %3, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 2
  %15 = load i32, i32* %14, align 4
  %16 = load i32*, i32** %3, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 3
  %18 = load i32, i32* %17, align 4
  %19 = load i32*, i32** %3, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 4
  %21 = load i32, i32* %20, align 4
  %22 = load i32*, i32** %3, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 5
  %24 = load i32, i32* %23, align 4
  %25 = call i32 (i8*, ...) @GATT_TRACE_DEBUG(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i32 %9, i32 %12, i32 %15, i32 %18, i32 %21, i32 %24)
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @gatt_cb, i32 0, i32 0), align 4
  %27 = call i64 @fixed_queue_is_empty(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %1
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %2, align 8
  br label %59

30:                                               ; preds = %1
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @gatt_cb, i32 0, i32 0), align 4
  %32 = call i32* @fixed_queue_get_list(i32 %31)
  store i32* %32, i32** %5, align 8
  %33 = load i32*, i32** %5, align 8
  %34 = call i32* @list_begin(i32* %33)
  store i32* %34, i32** %6, align 8
  br label %35

35:                                               ; preds = %54, %30
  %36 = load i32*, i32** %6, align 8
  %37 = load i32*, i32** %5, align 8
  %38 = call i32* @list_end(i32* %37)
  %39 = icmp ne i32* %36, %38
  br i1 %39, label %40, label %57

40:                                               ; preds = %35
  %41 = load i32*, i32** %6, align 8
  %42 = call i64 @list_node(i32* %41)
  %43 = inttoptr i64 %42 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %43, %struct.TYPE_4__** %4, align 8
  %44 = load i32*, i32** %3, align 8
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @BD_ADDR_LEN, align 4
  %49 = call i32 @memcmp(i32* %44, i32 %47, i32 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %40
  %52 = call i32 (i8*, ...) @GATT_TRACE_DEBUG(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %57

53:                                               ; preds = %40
  br label %54

54:                                               ; preds = %53
  %55 = load i32*, i32** %6, align 8
  %56 = call i32* @list_next(i32* %55)
  store i32* %56, i32** %6, align 8
  br label %35

57:                                               ; preds = %51, %35
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  store %struct.TYPE_4__* %58, %struct.TYPE_4__** %2, align 8
  br label %59

59:                                               ; preds = %57, %29
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  ret %struct.TYPE_4__* %60
}

declare dso_local i32 @GATT_TRACE_DEBUG(i8*, ...) #1

declare dso_local i64 @fixed_queue_is_empty(i32) #1

declare dso_local i32* @fixed_queue_get_list(i32) #1

declare dso_local i32* @list_begin(i32*) #1

declare dso_local i32* @list_end(i32*) #1

declare dso_local i64 @list_node(i32*) #1

declare dso_local i32 @memcmp(i32*, i32, i32) #1

declare dso_local i32* @list_next(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
