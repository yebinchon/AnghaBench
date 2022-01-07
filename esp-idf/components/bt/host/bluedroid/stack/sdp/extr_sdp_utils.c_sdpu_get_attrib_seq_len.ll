; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/sdp/extr_sdp_utils.c_sdpu_get_attrib_seq_len.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/sdp/extr_sdp_utils.c_sdpu_get_attrib_seq_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64, i64 }
%struct.TYPE_9__ = type { i64 }

@FALSE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @sdpu_get_attrib_seq_len(i32* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %4, align 8
  store i64 0, i64* %6, align 8
  %11 = load i64, i64* @FALSE, align 8
  store i64 %11, i64* %8, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %7, align 8
  br label %12

12:                                               ; preds = %66, %2
  %13 = load i64, i64* %7, align 8
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ult i64 %13, %16
  br i1 %17, label %18, label %69

18:                                               ; preds = %12
  %19 = load i64, i64* %8, align 8
  %20 = load i64, i64* @FALSE, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %37

22:                                               ; preds = %18
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  %26 = load i64, i64* %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %9, align 8
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %31, align 8
  %33 = load i64, i64* %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %10, align 8
  br label %37

37:                                               ; preds = %22, %18
  %38 = load i32*, i32** %3, align 8
  %39 = load i64, i64* %9, align 8
  %40 = load i64, i64* %10, align 8
  %41 = call %struct.TYPE_9__* @sdp_db_find_attr_in_rec(i32* %38, i64 %39, i64 %40)
  store %struct.TYPE_9__* %41, %struct.TYPE_9__** %5, align 8
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %43 = icmp ne %struct.TYPE_9__* %42, null
  br i1 %43, label %44, label %63

44:                                               ; preds = %37
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %46 = call i64 @sdpu_get_attrib_entry_len(%struct.TYPE_9__* %45)
  %47 = load i64, i64* %6, align 8
  %48 = add i64 %47, %46
  store i64 %48, i64* %6, align 8
  %49 = load i64, i64* %9, align 8
  %50 = load i64, i64* %10, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %60

52:                                               ; preds = %44
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = add i64 %55, 1
  store i64 %56, i64* %9, align 8
  %57 = load i64, i64* %7, align 8
  %58 = add i64 %57, -1
  store i64 %58, i64* %7, align 8
  %59 = load i64, i64* @TRUE, align 8
  store i64 %59, i64* %8, align 8
  br label %62

60:                                               ; preds = %44
  %61 = load i64, i64* @FALSE, align 8
  store i64 %61, i64* %8, align 8
  br label %62

62:                                               ; preds = %60, %52
  br label %65

63:                                               ; preds = %37
  %64 = load i64, i64* @FALSE, align 8
  store i64 %64, i64* %8, align 8
  br label %65

65:                                               ; preds = %63, %62
  br label %66

66:                                               ; preds = %65
  %67 = load i64, i64* %7, align 8
  %68 = add i64 %67, 1
  store i64 %68, i64* %7, align 8
  br label %12

69:                                               ; preds = %12
  %70 = load i64, i64* %6, align 8
  ret i64 %70
}

declare dso_local %struct.TYPE_9__* @sdp_db_find_attr_in_rec(i32*, i64, i64) #1

declare dso_local i64 @sdpu_get_attrib_entry_len(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
