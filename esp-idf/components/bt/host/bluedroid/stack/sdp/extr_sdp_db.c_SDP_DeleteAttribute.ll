; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/sdp/extr_sdp_db.c_SDP_DeleteAttribute.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/sdp/extr_sdp_db.c_SDP_DeleteAttribute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64, i64, i32, i32*, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64, i64, i32* }

@sdp_cb = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@.str = private unnamed_addr constant [41 x i8] c"Deleting attr_id 0x%04x for handle 0x%x\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SDP_DeleteAttribute(i64 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_7__*, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sdp_cb, i32 0, i32 0, i32 1), align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i64 0
  store %struct.TYPE_6__* %13, %struct.TYPE_6__** %8, align 8
  store i64 0, i64* %6, align 8
  br label %14

14:                                               ; preds = %162, %2
  %15 = load i64, i64* %6, align 8
  %16 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sdp_cb, i32 0, i32 0, i32 0), align 8
  %17 = icmp slt i64 %15, %16
  br i1 %17, label %18, label %167

18:                                               ; preds = %14
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* %4, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %161

24:                                               ; preds = %18
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 4
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i64 0
  store %struct.TYPE_7__* %28, %struct.TYPE_7__** %11, align 8
  %29 = load i64, i64* %5, align 8
  %30 = load i64, i64* %4, align 8
  %31 = call i32 @SDP_TRACE_API(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i64 %29, i64 %30)
  store i64 0, i64* %6, align 8
  br label %32

32:                                               ; preds = %155, %24
  %33 = load i64, i64* %6, align 8
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp slt i64 %33, %36
  br i1 %37, label %38, label %160

38:                                               ; preds = %32
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* %5, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %154

44:                                               ; preds = %38
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 2
  %47 = load i32*, i32** %46, align 8
  store i32* %47, i32** %9, align 8
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  store i64 %50, i64* %10, align 8
  %51 = load i64, i64* %10, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %86

53:                                               ; preds = %44
  store i64 0, i64* %7, align 8
  br label %54

54:                                               ; preds = %82, %53
  %55 = load i64, i64* %7, align 8
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp slt i64 %55, %58
  br i1 %59, label %60, label %85

60:                                               ; preds = %54
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 4
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %62, align 8
  %64 = load i64, i64* %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 2
  %67 = load i32*, i32** %66, align 8
  %68 = load i32*, i32** %9, align 8
  %69 = icmp ugt i32* %67, %68
  br i1 %69, label %70, label %81

70:                                               ; preds = %60
  %71 = load i64, i64* %10, align 8
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 4
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %73, align 8
  %75 = load i64, i64* %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 2
  %78 = load i32*, i32** %77, align 8
  %79 = sub i64 0, %71
  %80 = getelementptr inbounds i32, i32* %78, i64 %79
  store i32* %80, i32** %77, align 8
  br label %81

81:                                               ; preds = %70, %60
  br label %82

82:                                               ; preds = %81
  %83 = load i64, i64* %7, align 8
  %84 = add nsw i64 %83, 1
  store i64 %84, i64* %7, align 8
  br label %54

85:                                               ; preds = %54
  br label %86

86:                                               ; preds = %85, %44
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = add nsw i64 %89, -1
  store i64 %90, i64* %88, align 8
  %91 = load i64, i64* %6, align 8
  store i64 %91, i64* %7, align 8
  br label %92

92:                                               ; preds = %104, %86
  %93 = load i64, i64* %7, align 8
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = icmp slt i64 %93, %96
  br i1 %97, label %98, label %109

98:                                               ; preds = %92
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i64 1
  %102 = bitcast %struct.TYPE_7__* %99 to i8*
  %103 = bitcast %struct.TYPE_7__* %101 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %102, i8* align 8 %103, i64 24, i1 false)
  br label %104

104:                                              ; preds = %98
  %105 = load i64, i64* %7, align 8
  %106 = add nsw i64 %105, 1
  store i64 %106, i64* %7, align 8
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 1
  store %struct.TYPE_7__* %108, %struct.TYPE_7__** %11, align 8
  br label %92

109:                                              ; preds = %92
  %110 = load i64, i64* %10, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %152

112:                                              ; preds = %109
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = sext i32 %115 to i64
  %117 = load i32*, i32** %9, align 8
  %118 = load i64, i64* %10, align 8
  %119 = getelementptr inbounds i32, i32* %117, i64 %118
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 3
  %122 = load i32*, i32** %121, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 0
  %124 = ptrtoint i32* %119 to i64
  %125 = ptrtoint i32* %123 to i64
  %126 = sub i64 %124, %125
  %127 = sdiv exact i64 %126, 4
  %128 = sub nsw i64 %116, %127
  store i64 %128, i64* %6, align 8
  store i64 0, i64* %7, align 8
  br label %129

129:                                              ; preds = %139, %112
  %130 = load i64, i64* %7, align 8
  %131 = load i64, i64* %6, align 8
  %132 = icmp slt i64 %130, %131
  br i1 %132, label %133, label %144

133:                                              ; preds = %129
  %134 = load i32*, i32** %9, align 8
  %135 = load i64, i64* %10, align 8
  %136 = getelementptr inbounds i32, i32* %134, i64 %135
  %137 = load i32, i32* %136, align 4
  %138 = load i32*, i32** %9, align 8
  store i32 %137, i32* %138, align 4
  br label %139

139:                                              ; preds = %133
  %140 = load i64, i64* %7, align 8
  %141 = add nsw i64 %140, 1
  store i64 %141, i64* %7, align 8
  %142 = load i32*, i32** %9, align 8
  %143 = getelementptr inbounds i32, i32* %142, i32 1
  store i32* %143, i32** %9, align 8
  br label %129

144:                                              ; preds = %129
  %145 = load i64, i64* %10, align 8
  %146 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 8
  %149 = sext i32 %148 to i64
  %150 = sub nsw i64 %149, %145
  %151 = trunc i64 %150 to i32
  store i32 %151, i32* %147, align 8
  br label %152

152:                                              ; preds = %144, %109
  %153 = load i32, i32* @TRUE, align 4
  store i32 %153, i32* %3, align 4
  br label %169

154:                                              ; preds = %38
  br label %155

155:                                              ; preds = %154
  %156 = load i64, i64* %6, align 8
  %157 = add nsw i64 %156, 1
  store i64 %157, i64* %6, align 8
  %158 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %159 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %158, i32 1
  store %struct.TYPE_7__* %159, %struct.TYPE_7__** %11, align 8
  br label %32

160:                                              ; preds = %32
  br label %161

161:                                              ; preds = %160, %18
  br label %162

162:                                              ; preds = %161
  %163 = load i64, i64* %6, align 8
  %164 = add nsw i64 %163, 1
  store i64 %164, i64* %6, align 8
  %165 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 1
  store %struct.TYPE_6__* %166, %struct.TYPE_6__** %8, align 8
  br label %14

167:                                              ; preds = %14
  %168 = load i32, i32* @FALSE, align 4
  store i32 %168, i32* %3, align 4
  br label %169

169:                                              ; preds = %167, %152
  %170 = load i32, i32* %3, align 4
  ret i32 %170
}

declare dso_local i32 @SDP_TRACE_API(i8*, i64, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
