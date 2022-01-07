; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_asfdec_o.c_asf_read_ext_stream_properties.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_asfdec_o.c_asf_read_ext_stream_properties.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_17__**, i32*, %struct.TYPE_19__* }
%struct.TYPE_17__ = type { %struct.TYPE_15__, %struct.TYPE_14__*, i8*, i8* }
%struct.TYPE_15__ = type { i32, i8* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_19__ = type { i32, i32, %struct.TYPE_13__** }
%struct.TYPE_13__ = type { i32, i64, i32 }
%struct.TYPE_16__ = type { {}*, i32 }

@ASF_STREAM_NUM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Stream Properties\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_18__*, %struct.TYPE_16__*)* @asf_read_ext_stream_properties to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asf_read_ext_stream_properties(%struct.TYPE_18__* %0, %struct.TYPE_16__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %4, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %5, align 8
  %23 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %23, i32 0, i32 2
  %25 = load %struct.TYPE_19__*, %struct.TYPE_19__** %24, align 8
  store %struct.TYPE_19__* %25, %struct.TYPE_19__** %6, align 8
  %26 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  store i32* %28, i32** %7, align 8
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %8, align 8
  %29 = load i32*, i32** %7, align 8
  %30 = call i8* @avio_rl64(i32* %29)
  store i8* %30, i8** %20, align 8
  %31 = load i32*, i32** %7, align 8
  %32 = call i8* @avio_rl64(i32* %31)
  store i8* %32, i8** %17, align 8
  %33 = load i32*, i32** %7, align 8
  %34 = call i8* @avio_rl64(i32* %33)
  store i8* %34, i8** %18, align 8
  %35 = load i32*, i32** %7, align 8
  %36 = call i32 @avio_rl32(i32* %35)
  store i32 %36, i32* %16, align 4
  %37 = load i32*, i32** %7, align 8
  %38 = call i32 @avio_skip(i32* %37, i32 28)
  %39 = load i32*, i32** %7, align 8
  %40 = call i32 @avio_rl16(i32* %39)
  store i32 %40, i32* %12, align 4
  %41 = load i32, i32* @ASF_STREAM_NUM, align 4
  %42 = load i32, i32* %12, align 4
  %43 = and i32 %42, %41
  store i32 %43, i32* %12, align 4
  %44 = load i32*, i32** %7, align 8
  %45 = call i32 @avio_rl16(i32* %44)
  store i32 %45, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %46

46:                                               ; preds = %89, %2
  %47 = load i32, i32* %14, align 4
  %48 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp slt i32 %47, %50
  br i1 %51, label %52, label %92

52:                                               ; preds = %46
  %53 = load i32, i32* %12, align 4
  %54 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %54, i32 0, i32 2
  %56 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %55, align 8
  %57 = load i32, i32* %14, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %56, i64 %58
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp eq i32 %53, %62
  br i1 %63, label %64, label %88

64:                                               ; preds = %52
  %65 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %66, align 8
  %68 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %68, i32 0, i32 2
  %70 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %69, align 8
  %71 = load i32, i32* %14, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %70, i64 %72
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %67, i64 %76
  %78 = load %struct.TYPE_17__*, %struct.TYPE_17__** %77, align 8
  store %struct.TYPE_17__* %78, %struct.TYPE_17__** %8, align 8
  %79 = load i32, i32* %13, align 4
  %80 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %80, i32 0, i32 2
  %82 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %81, align 8
  %83 = load i32, i32* %14, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %82, i64 %84
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i32 0, i32 2
  store i32 %79, i32* %87, align 8
  br label %92

88:                                               ; preds = %52
  br label %89

89:                                               ; preds = %88
  %90 = load i32, i32* %14, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %14, align 4
  br label %46

92:                                               ; preds = %64, %46
  %93 = load i32*, i32** %7, align 8
  %94 = call i8* @avio_rl64(i32* %93)
  store i8* %94, i8** %19, align 8
  %95 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %96 = icmp ne %struct.TYPE_17__* %95, null
  br i1 %96, label %97, label %121

97:                                               ; preds = %92
  %98 = load i8*, i8** %17, align 8
  %99 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %99, i32 0, i32 3
  store i8* %98, i8** %100, align 8
  %101 = load i8*, i8** %18, align 8
  %102 = load i8*, i8** %17, align 8
  %103 = ptrtoint i8* %101 to i64
  %104 = ptrtoint i8* %102 to i64
  %105 = sub i64 %103, %104
  %106 = inttoptr i64 %105 to i8*
  %107 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %108 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %107, i32 0, i32 2
  store i8* %106, i8** %108, align 8
  %109 = load i32, i32* %16, align 4
  %110 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %111 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %110, i32 0, i32 1
  %112 = load %struct.TYPE_14__*, %struct.TYPE_14__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %112, i32 0, i32 0
  store i32 %109, i32* %113, align 4
  %114 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %115 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %115, i32 0, i32 0
  store i32 10000000, i32* %116, align 8
  %117 = load i8*, i8** %19, align 8
  %118 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %119 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %119, i32 0, i32 1
  store i8* %117, i8** %120, align 8
  br label %121

121:                                              ; preds = %97, %92
  %122 = load i32*, i32** %7, align 8
  %123 = call i32 @avio_rl16(i32* %122)
  store i32 %123, i32* %10, align 4
  %124 = load i32*, i32** %7, align 8
  %125 = call i32 @avio_rl16(i32* %124)
  store i32 %125, i32* %11, align 4
  store i32 0, i32* %14, align 4
  br label %126

126:                                              ; preds = %138, %121
  %127 = load i32, i32* %14, align 4
  %128 = load i32, i32* %10, align 4
  %129 = icmp slt i32 %127, %128
  br i1 %129, label %130, label %141

130:                                              ; preds = %126
  %131 = load i32*, i32** %7, align 8
  %132 = call i32 @avio_rl16(i32* %131)
  %133 = load i32*, i32** %7, align 8
  %134 = call i32 @avio_rl16(i32* %133)
  store i32 %134, i32* %21, align 4
  %135 = load i32*, i32** %7, align 8
  %136 = load i32, i32* %21, align 4
  %137 = call i32 @avio_skip(i32* %135, i32 %136)
  br label %138

138:                                              ; preds = %130
  %139 = load i32, i32* %14, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %14, align 4
  br label %126

141:                                              ; preds = %126
  store i32 0, i32* %14, align 4
  br label %142

142:                                              ; preds = %156, %141
  %143 = load i32, i32* %14, align 4
  %144 = load i32, i32* %11, align 4
  %145 = icmp slt i32 %143, %144
  br i1 %145, label %146, label %159

146:                                              ; preds = %142
  %147 = load i32*, i32** %7, align 8
  %148 = call i32 @avio_skip(i32* %147, i32 16)
  %149 = load i32*, i32** %7, align 8
  %150 = call i32 @avio_skip(i32* %149, i32 2)
  %151 = load i32*, i32** %7, align 8
  %152 = call i32 @avio_rl32(i32* %151)
  store i32 %152, i32* %22, align 4
  %153 = load i32*, i32** %7, align 8
  %154 = load i32, i32* %22, align 4
  %155 = call i32 @avio_skip(i32* %153, i32 %154)
  br label %156

156:                                              ; preds = %146
  %157 = load i32, i32* %14, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %14, align 4
  br label %142

159:                                              ; preds = %142
  %160 = load i32*, i32** %7, align 8
  %161 = call i32 @ff_get_guid(i32* %160, i32* %9)
  store i32 %161, i32* %15, align 4
  %162 = icmp slt i32 %161, 0
  br i1 %162, label %163, label %170

163:                                              ; preds = %159
  %164 = load i32*, i32** %7, align 8
  %165 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %166 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = load i8*, i8** %20, align 8
  %169 = call i32 @align_position(i32* %164, i32 %167, i8* %168)
  store i32 0, i32* %3, align 4
  br label %200

170:                                              ; preds = %159
  %171 = load i32, i32* %9, align 4
  %172 = call %struct.TYPE_16__* @find_guid(i32 %171)
  store %struct.TYPE_16__* %172, %struct.TYPE_16__** %5, align 8
  %173 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %174 = icmp ne %struct.TYPE_16__* %173, null
  br i1 %174, label %175, label %193

175:                                              ; preds = %170
  %176 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %177 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 8
  %179 = call i32 @strcmp(i32 %178, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %193, label %181

181:                                              ; preds = %175
  %182 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %183 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %182, i32 0, i32 0
  %184 = bitcast {}** %183 to i32 (%struct.TYPE_18__*, %struct.TYPE_16__*)**
  %185 = load i32 (%struct.TYPE_18__*, %struct.TYPE_16__*)*, i32 (%struct.TYPE_18__*, %struct.TYPE_16__*)** %184, align 8
  %186 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %187 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %188 = call i32 %185(%struct.TYPE_18__* %186, %struct.TYPE_16__* %187)
  store i32 %188, i32* %15, align 4
  %189 = icmp slt i32 %188, 0
  br i1 %189, label %190, label %192

190:                                              ; preds = %181
  %191 = load i32, i32* %15, align 4
  store i32 %191, i32* %3, align 4
  br label %200

192:                                              ; preds = %181
  br label %193

193:                                              ; preds = %192, %175, %170
  %194 = load i32*, i32** %7, align 8
  %195 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %196 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = load i8*, i8** %20, align 8
  %199 = call i32 @align_position(i32* %194, i32 %197, i8* %198)
  store i32 0, i32* %3, align 4
  br label %200

200:                                              ; preds = %193, %190, %163
  %201 = load i32, i32* %3, align 4
  ret i32 %201
}

declare dso_local i8* @avio_rl64(i32*) #1

declare dso_local i32 @avio_rl32(i32*) #1

declare dso_local i32 @avio_skip(i32*, i32) #1

declare dso_local i32 @avio_rl16(i32*) #1

declare dso_local i32 @ff_get_guid(i32*, i32*) #1

declare dso_local i32 @align_position(i32*, i32, i8*) #1

declare dso_local %struct.TYPE_16__* @find_guid(i32) #1

declare dso_local i32 @strcmp(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
