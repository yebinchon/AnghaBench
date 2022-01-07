; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/mkv/extr_matroska_reader.c_mkv_find_next_block.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/mkv/extr_matroska_reader.c_mkv_find_next_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, %struct.TYPE_7__*, i64, i64 }
%struct.TYPE_7__ = type { i64 }

@VC_CONTAINER_ERROR_NOT_FOUND = common dso_local global i64 0, align 8
@VC_CONTAINER_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"multi-segment files not supported\00", align 1
@VC_CONTAINER_ERROR_EOS = common dso_local global i64 0, align 8
@MKV_ELEMENT_ID_BLOCK = common dso_local global i64 0, align 8
@MKV_ELEMENT_ID_SIMPLE_BLOCK = common dso_local global i64 0, align 8
@MKV_ELEMENT_ID_BLOCKGROUP = common dso_local global i64 0, align 8
@MKV_ELEMENT_ID_CLUSTER = common dso_local global i64 0, align 8
@MKV_ELEMENT_ID_SEGMENT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, %struct.TYPE_8__*)* @mkv_find_next_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mkv_find_next_block(i32* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %4, align 8
  %6 = load i64, i64* @VC_CONTAINER_ERROR_NOT_FOUND, align 8
  store i64 %6, i64* %5, align 8
  br label %7

7:                                                ; preds = %165, %2
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ult i64 %10, 0
  br i1 %11, label %12, label %24

12:                                               ; preds = %7
  %13 = load i32*, i32** %3, align 8
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %15 = call i64 @mkv_find_next_segment(i32* %13, %struct.TYPE_8__* %14)
  store i64 %15, i64* %5, align 8
  %16 = load i64, i64* %5, align 8
  %17 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %12
  %20 = load i32*, i32** %3, align 8
  %21 = call i32 @LOG_ERROR(i32* %20, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %22 = load i64, i64* @VC_CONTAINER_ERROR_EOS, align 8
  store i64 %22, i64* %5, align 8
  br label %167

23:                                               ; preds = %12
  br label %24

24:                                               ; preds = %23, %7
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %26, align 8
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @MKV_ELEMENT_ID_BLOCK, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %48, label %36

36:                                               ; preds = %24
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %38, align 8
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @MKV_ELEMENT_ID_SIMPLE_BLOCK, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %36, %24
  %49 = load i32*, i32** %3, align 8
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %51 = call i64 @mkv_skip_element(i32* %49, %struct.TYPE_8__* %50)
  store i64 %51, i64* %5, align 8
  br label %52

52:                                               ; preds = %48, %36
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 1
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %54, align 8
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @MKV_ELEMENT_ID_BLOCKGROUP, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %86

64:                                               ; preds = %52
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 3
  store i64 0, i64* %66, align 8
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 2
  store i64 0, i64* %68, align 8
  %69 = load i32*, i32** %3, align 8
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %71 = load i64, i64* @MKV_ELEMENT_ID_BLOCK, align 8
  %72 = call i64 @mkv_find_next_element(i32* %69, %struct.TYPE_8__* %70, i64 %71)
  store i64 %72, i64* %5, align 8
  %73 = load i64, i64* %5, align 8
  %74 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %64
  br label %167

77:                                               ; preds = %64
  %78 = load i64, i64* %5, align 8
  %79 = load i64, i64* @VC_CONTAINER_ERROR_NOT_FOUND, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %85

81:                                               ; preds = %77
  %82 = load i32*, i32** %3, align 8
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %84 = call i64 @mkv_skip_element(i32* %82, %struct.TYPE_8__* %83)
  store i64 %84, i64* %5, align 8
  br label %85

85:                                               ; preds = %81, %77
  br label %86

86:                                               ; preds = %85, %52
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 1
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %88, align 8
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @MKV_ELEMENT_ID_CLUSTER, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %130

98:                                               ; preds = %86
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 2
  store i64 0, i64* %100, align 8
  %101 = load i32*, i32** %3, align 8
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %103 = load i64, i64* @MKV_ELEMENT_ID_BLOCKGROUP, align 8
  %104 = call i64 @mkv_find_next_element(i32* %101, %struct.TYPE_8__* %102, i64 %103)
  store i64 %104, i64* %5, align 8
  %105 = load i64, i64* %5, align 8
  %106 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %121

108:                                              ; preds = %98
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 1
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %110, align 8
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @MKV_ELEMENT_ID_SIMPLE_BLOCK, align 8
  %119 = icmp eq i64 %117, %118
  br i1 %119, label %120, label %121

120:                                              ; preds = %108
  br label %167

121:                                              ; preds = %108, %98
  %122 = load i64, i64* %5, align 8
  %123 = load i64, i64* @VC_CONTAINER_ERROR_NOT_FOUND, align 8
  %124 = icmp eq i64 %122, %123
  br i1 %124, label %125, label %129

125:                                              ; preds = %121
  %126 = load i32*, i32** %3, align 8
  %127 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %128 = call i64 @mkv_skip_element(i32* %126, %struct.TYPE_8__* %127)
  store i64 %128, i64* %5, align 8
  br label %129

129:                                              ; preds = %125, %121
  br label %130

130:                                              ; preds = %129, %86
  %131 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 1
  %133 = load %struct.TYPE_7__*, %struct.TYPE_7__** %132, align 8
  %134 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* @MKV_ELEMENT_ID_SEGMENT, align 8
  %141 = icmp eq i64 %139, %140
  br i1 %141, label %142, label %155

142:                                              ; preds = %130
  %143 = load i32*, i32** %3, align 8
  %144 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %145 = load i64, i64* @MKV_ELEMENT_ID_CLUSTER, align 8
  %146 = call i64 @mkv_find_next_element(i32* %143, %struct.TYPE_8__* %144, i64 %145)
  store i64 %146, i64* %5, align 8
  %147 = load i64, i64* %5, align 8
  %148 = load i64, i64* @VC_CONTAINER_ERROR_NOT_FOUND, align 8
  %149 = icmp eq i64 %147, %148
  br i1 %149, label %150, label %154

150:                                              ; preds = %142
  %151 = load i32*, i32** %3, align 8
  %152 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %153 = call i64 @mkv_skip_element(i32* %151, %struct.TYPE_8__* %152)
  store i64 %153, i64* %5, align 8
  br label %154

154:                                              ; preds = %150, %142
  br label %155

155:                                              ; preds = %154, %130
  br label %156

156:                                              ; preds = %155
  %157 = load i64, i64* %5, align 8
  %158 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %159 = icmp eq i64 %157, %158
  br i1 %159, label %160, label %165

160:                                              ; preds = %156
  %161 = load i32*, i32** %3, align 8
  %162 = call i64 @STREAM_STATUS(i32* %161)
  %163 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %164 = icmp eq i64 %162, %163
  br label %165

165:                                              ; preds = %160, %156
  %166 = phi i1 [ false, %156 ], [ %164, %160 ]
  br i1 %166, label %7, label %167

167:                                              ; preds = %165, %120, %76, %19
  %168 = load i64, i64* %5, align 8
  %169 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %170 = icmp eq i64 %168, %169
  br i1 %170, label %171, label %174

171:                                              ; preds = %167
  %172 = load i32*, i32** %3, align 8
  %173 = call i64 @STREAM_STATUS(i32* %172)
  br label %176

174:                                              ; preds = %167
  %175 = load i64, i64* %5, align 8
  br label %176

176:                                              ; preds = %174, %171
  %177 = phi i64 [ %173, %171 ], [ %175, %174 ]
  ret i64 %177
}

declare dso_local i64 @mkv_find_next_segment(i32*, %struct.TYPE_8__*) #1

declare dso_local i32 @LOG_ERROR(i32*, i8*) #1

declare dso_local i64 @mkv_skip_element(i32*, %struct.TYPE_8__*) #1

declare dso_local i64 @mkv_find_next_element(i32*, %struct.TYPE_8__*, i64) #1

declare dso_local i64 @STREAM_STATUS(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
