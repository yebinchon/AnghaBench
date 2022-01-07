; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/sdp/extr_sdp_api.c_sdp_fill_proto_elem.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/sdp/extr_sdp_api.c_sdp_fill_proto_elem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_8__, i32, %struct.TYPE_10__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, i64, %struct.TYPE_10__* }
%struct.TYPE_9__ = type { i64, i64*, i64 }

@DATA_ELE_SEQ_DESC_TYPE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@UUID_DESC_TYPE = common dso_local global i64 0, align 8
@UINT_DESC_TYPE = common dso_local global i64 0, align 8
@SDP_MAX_PROTOCOL_PARAMS = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, i64, %struct.TYPE_9__*)* @sdp_fill_proto_elem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdp_fill_proto_elem(%struct.TYPE_10__* %0, i64 %1, %struct.TYPE_9__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %7, align 8
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 2
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  store %struct.TYPE_10__* %13, %struct.TYPE_10__** %5, align 8
  br label %14

14:                                               ; preds = %130, %3
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %16 = icmp ne %struct.TYPE_10__* %15, null
  br i1 %16, label %17, label %134

17:                                               ; preds = %14
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call i64 @SDP_DISC_ATTR_TYPE(i32 %20)
  %22 = load i64, i64* @DATA_ELE_SEQ_DESC_TYPE, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %17
  %25 = load i32, i32* @FALSE, align 4
  store i32 %25, i32* %4, align 4
  br label %136

26:                                               ; preds = %17
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 2
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %30, align 8
  store %struct.TYPE_10__* %31, %struct.TYPE_10__** %8, align 8
  br label %32

32:                                               ; preds = %125, %26
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %34 = icmp ne %struct.TYPE_10__* %33, null
  br i1 %34, label %35, label %129

35:                                               ; preds = %32
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call i64 @SDP_DISC_ATTR_TYPE(i32 %38)
  %40 = load i64, i64* @UUID_DESC_TYPE, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %124

42:                                               ; preds = %35
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @SDP_DISC_ATTR_LEN(i32 %45)
  %47 = icmp eq i32 %46, 2
  br i1 %47, label %48, label %124

48:                                               ; preds = %42
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* %6, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %124

56:                                               ; preds = %48
  %57 = load i64, i64* %6, align 8
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 2
  store i64 %57, i64* %59, align 8
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 0
  store i64 0, i64* %61, align 8
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 2
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %63, align 8
  store %struct.TYPE_10__* %64, %struct.TYPE_10__** %8, align 8
  br label %65

65:                                               ; preds = %118, %56
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %67 = icmp ne %struct.TYPE_10__* %66, null
  br i1 %67, label %68, label %122

68:                                               ; preds = %65
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = call i64 @SDP_DISC_ATTR_TYPE(i32 %71)
  %73 = load i64, i64* @UINT_DESC_TYPE, align 8
  %74 = icmp ne i64 %72, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %68
  br label %122

76:                                               ; preds = %68
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @SDP_DISC_ATTR_LEN(i32 %79)
  %81 = icmp eq i32 %80, 2
  br i1 %81, label %82, label %96

82:                                               ; preds = %76
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 1
  %90 = load i64*, i64** %89, align 8
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = add nsw i64 %93, 1
  store i64 %94, i64* %92, align 8
  %95 = getelementptr inbounds i64, i64* %90, i64 %93
  store i64 %87, i64* %95, align 8
  br label %110

96:                                               ; preds = %76
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 1
  %104 = load i64*, i64** %103, align 8
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = add nsw i64 %107, 1
  store i64 %108, i64* %106, align 8
  %109 = getelementptr inbounds i64, i64* %104, i64 %107
  store i64 %101, i64* %109, align 8
  br label %110

110:                                              ; preds = %96, %82
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @SDP_MAX_PROTOCOL_PARAMS, align 8
  %115 = icmp sge i64 %113, %114
  br i1 %115, label %116, label %117

116:                                              ; preds = %110
  br label %122

117:                                              ; preds = %110
  br label %118

118:                                              ; preds = %117
  %119 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i32 0, i32 2
  %121 = load %struct.TYPE_10__*, %struct.TYPE_10__** %120, align 8
  store %struct.TYPE_10__* %121, %struct.TYPE_10__** %8, align 8
  br label %65

122:                                              ; preds = %116, %75, %65
  %123 = load i32, i32* @TRUE, align 4
  store i32 %123, i32* %4, align 4
  br label %136

124:                                              ; preds = %48, %42, %35
  br label %125

125:                                              ; preds = %124
  %126 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 2
  %128 = load %struct.TYPE_10__*, %struct.TYPE_10__** %127, align 8
  store %struct.TYPE_10__* %128, %struct.TYPE_10__** %8, align 8
  br label %32

129:                                              ; preds = %32
  br label %130

130:                                              ; preds = %129
  %131 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %131, i32 0, i32 2
  %133 = load %struct.TYPE_10__*, %struct.TYPE_10__** %132, align 8
  store %struct.TYPE_10__* %133, %struct.TYPE_10__** %5, align 8
  br label %14

134:                                              ; preds = %14
  %135 = load i32, i32* @FALSE, align 4
  store i32 %135, i32* %4, align 4
  br label %136

136:                                              ; preds = %134, %122, %24
  %137 = load i32, i32* %4, align 4
  ret i32 %137
}

declare dso_local i64 @SDP_DISC_ATTR_TYPE(i32) #1

declare dso_local i32 @SDP_DISC_ATTR_LEN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
