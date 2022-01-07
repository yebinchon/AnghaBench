; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/sdp/extr_sdp_db.c_SDP_DeleteRecord.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/sdp/extr_sdp_db.c_SDP_DeleteRecord.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i64, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64, i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@sdp_cb = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"SDP_DeleteRecord ok, num_records:%d\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SDP_DeleteRecord(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  store i64 %0, i64* %3, align 8
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sdp_cb, i32 0, i32 0, i32 2), align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i64 0
  store %struct.TYPE_7__* %9, %struct.TYPE_7__** %7, align 8
  %10 = load i64, i64* %3, align 8
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sdp_cb, i32 0, i32 0, i32 0), align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %12, %1
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sdp_cb, i32 0, i32 0, i32 0), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sdp_cb, i32 0, i32 0, i32 1), align 8
  %16 = load i32, i32* @TRUE, align 4
  store i32 %16, i32* %2, align 4
  br label %86

17:                                               ; preds = %12
  store i64 0, i64* %4, align 8
  br label %18

18:                                               ; preds = %78, %17
  %19 = load i64, i64* %4, align 8
  %20 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sdp_cb, i32 0, i32 0, i32 0), align 8
  %21 = icmp slt i64 %19, %20
  br i1 %21, label %22, label %83

22:                                               ; preds = %18
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* %3, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %77

28:                                               ; preds = %22
  %29 = load i64, i64* %4, align 8
  store i64 %29, i64* %5, align 8
  br label %30

30:                                               ; preds = %61, %28
  %31 = load i64, i64* %5, align 8
  %32 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sdp_cb, i32 0, i32 0, i32 0), align 8
  %33 = icmp slt i64 %31, %32
  br i1 %33, label %34, label %66

34:                                               ; preds = %30
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i64 1
  %38 = bitcast %struct.TYPE_7__* %35 to i8*
  %39 = bitcast %struct.TYPE_7__* %37 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %38, i8* align 8 %39, i64 24, i1 false)
  store i64 0, i64* %6, align 8
  br label %40

40:                                               ; preds = %57, %34
  %41 = load i64, i64* %6, align 8
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp slt i64 %41, %44
  br i1 %45, label %46, label %60

46:                                               ; preds = %40
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 2
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %48, align 8
  %50 = load i64, i64* %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = sext i32 %53 to i64
  %55 = sub i64 %54, 24
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %52, align 4
  br label %57

57:                                               ; preds = %46
  %58 = load i64, i64* %6, align 8
  %59 = add nsw i64 %58, 1
  store i64 %59, i64* %6, align 8
  br label %40

60:                                               ; preds = %40
  br label %61

61:                                               ; preds = %60
  %62 = load i64, i64* %5, align 8
  %63 = add nsw i64 %62, 1
  store i64 %63, i64* %5, align 8
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 1
  store %struct.TYPE_7__* %65, %struct.TYPE_7__** %7, align 8
  br label %30

66:                                               ; preds = %30
  %67 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sdp_cb, i32 0, i32 0, i32 0), align 8
  %68 = add nsw i64 %67, -1
  store i64 %68, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sdp_cb, i32 0, i32 0, i32 0), align 8
  %69 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sdp_cb, i32 0, i32 0, i32 0), align 8
  %70 = call i32 @SDP_TRACE_DEBUG(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i64 %69)
  %71 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sdp_cb, i32 0, i32 0, i32 1), align 8
  %72 = load i64, i64* %3, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %66
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sdp_cb, i32 0, i32 0, i32 1), align 8
  br label %75

75:                                               ; preds = %74, %66
  %76 = load i32, i32* @TRUE, align 4
  store i32 %76, i32* %2, align 4
  br label %86

77:                                               ; preds = %22
  br label %78

78:                                               ; preds = %77
  %79 = load i64, i64* %4, align 8
  %80 = add nsw i64 %79, 1
  store i64 %80, i64* %4, align 8
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 1
  store %struct.TYPE_7__* %82, %struct.TYPE_7__** %7, align 8
  br label %18

83:                                               ; preds = %18
  br label %84

84:                                               ; preds = %83
  %85 = load i32, i32* @FALSE, align 4
  store i32 %85, i32* %2, align 4
  br label %86

86:                                               ; preds = %84, %75, %15
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @SDP_TRACE_DEBUG(i8*, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
