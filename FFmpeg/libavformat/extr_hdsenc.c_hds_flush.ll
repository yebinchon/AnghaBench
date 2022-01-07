; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_hdsenc.c_hds_flush.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_hdsenc.c_hds_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i8*, %struct.TYPE_19__**, %struct.TYPE_22__* }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_22__ = type { i32, i32, i64 }
%struct.TYPE_21__ = type { i64, i32, i32, %struct.TYPE_24__**, i64, i32, i64, %struct.TYPE_20__* }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_20__ = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"%s/stream%dSeg1-Frag%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_23__*, %struct.TYPE_21__*, i32, i64)* @hds_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hds_flush(%struct.TYPE_23__* %0, %struct.TYPE_21__* %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_23__*, align 8
  %7 = alloca %struct.TYPE_21__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_22__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [1024 x i8], align 16
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %6, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %16 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %16, i32 0, i32 2
  %18 = load %struct.TYPE_22__*, %struct.TYPE_22__** %17, align 8
  store %struct.TYPE_22__* %18, %struct.TYPE_22__** %10, align 8
  store i32 0, i32* %12, align 4
  %19 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %20, align 8
  %22 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %21, i64 %24
  %26 = load %struct.TYPE_19__*, %struct.TYPE_19__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %14, align 4
  %29 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %29, i32 0, i32 6
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %187

34:                                               ; preds = %4
  %35 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %35, i32 0, i32 7
  %37 = load %struct.TYPE_20__*, %struct.TYPE_20__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @avio_flush(i32 %39)
  %41 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %41, i32 0, i32 6
  store i64 0, i64* %42, align 8
  %43 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %44 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %45 = call i32 @close_file(%struct.TYPE_23__* %43, %struct.TYPE_21__* %44)
  %46 = getelementptr inbounds [1024 x i8], [1024 x i8]* %13, i64 0, i64 0
  %47 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = load i32, i32* %14, align 4
  %51 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @snprintf(i8* %46, i32 1024, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %49, i32 %50, i32 %53)
  %55 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %55, i32 0, i32 5
  %57 = load i32, i32* %56, align 8
  %58 = getelementptr inbounds [1024 x i8], [1024 x i8]* %13, i64 0, i64 0
  %59 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %60 = call i32 @ff_rename(i32 %57, i8* %58, %struct.TYPE_23__* %59)
  store i32 %60, i32* %12, align 4
  %61 = load i32, i32* %12, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %34
  %64 = load i32, i32* %12, align 4
  store i32 %64, i32* %5, align 4
  br label %187

65:                                               ; preds = %34
  %66 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %67 = getelementptr inbounds [1024 x i8], [1024 x i8]* %13, i64 0, i64 0
  %68 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %68, i32 0, i32 4
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* %9, align 8
  %72 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %72, i32 0, i32 4
  %74 = load i64, i64* %73, align 8
  %75 = sub nsw i64 %71, %74
  %76 = call i32 @add_fragment(%struct.TYPE_21__* %66, i8* %67, i64 %70, i64 %75)
  %77 = load i32, i32* %8, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %89, label %79

79:                                               ; preds = %65
  %80 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %81 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %82 = load i64, i64* %9, align 8
  %83 = call i32 @init_file(%struct.TYPE_23__* %80, %struct.TYPE_21__* %81, i64 %82)
  store i32 %83, i32* %12, align 4
  %84 = load i32, i32* %12, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %79
  %87 = load i32, i32* %12, align 4
  store i32 %87, i32* %5, align 4
  br label %187

88:                                               ; preds = %79
  br label %89

89:                                               ; preds = %88, %65
  %90 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %91 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %102, label %94

94:                                               ; preds = %89
  %95 = load i32, i32* %8, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %177

97:                                               ; preds = %94
  %98 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %99 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %98, i32 0, i32 2
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %177

102:                                              ; preds = %97, %89
  %103 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %104 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %107 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = sub nsw i32 %105, %108
  %110 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %111 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = sub nsw i32 %109, %112
  store i32 %113, i32* %15, align 4
  %114 = load i32, i32* %8, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %125

116:                                              ; preds = %102
  %117 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %118 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %117, i32 0, i32 2
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %125

121:                                              ; preds = %116
  %122 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %123 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 4
  store i32 %124, i32* %15, align 4
  br label %125

125:                                              ; preds = %121, %116, %102
  %126 = load i32, i32* %15, align 4
  %127 = icmp sgt i32 %126, 0
  br i1 %127, label %128, label %176

128:                                              ; preds = %125
  store i32 0, i32* %11, align 4
  br label %129

129:                                              ; preds = %151, %128
  %130 = load i32, i32* %11, align 4
  %131 = load i32, i32* %15, align 4
  %132 = icmp slt i32 %130, %131
  br i1 %132, label %133, label %154

133:                                              ; preds = %129
  %134 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %135 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %134, i32 0, i32 3
  %136 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %135, align 8
  %137 = load i32, i32* %11, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %136, i64 %138
  %140 = load %struct.TYPE_24__*, %struct.TYPE_24__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @unlink(i32 %142)
  %144 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %145 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %144, i32 0, i32 3
  %146 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %145, align 8
  %147 = load i32, i32* %11, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %146, i64 %148
  %150 = call i32 @av_freep(%struct.TYPE_24__** %149)
  br label %151

151:                                              ; preds = %133
  %152 = load i32, i32* %11, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %11, align 4
  br label %129

154:                                              ; preds = %129
  %155 = load i32, i32* %15, align 4
  %156 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %157 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 4
  %159 = sub nsw i32 %158, %155
  store i32 %159, i32* %157, align 4
  %160 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %161 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %160, i32 0, i32 3
  %162 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %161, align 8
  %163 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %164 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %163, i32 0, i32 3
  %165 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %164, align 8
  %166 = load i32, i32* %15, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %165, i64 %167
  %169 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %170 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 4
  %172 = sext i32 %171 to i64
  %173 = mul i64 %172, 8
  %174 = trunc i64 %173 to i32
  %175 = call i32 @memmove(%struct.TYPE_24__** %162, %struct.TYPE_24__** %168, i32 %174)
  br label %176

176:                                              ; preds = %154, %125
  br label %177

177:                                              ; preds = %176, %97, %94
  %178 = load i32, i32* %12, align 4
  %179 = icmp sge i32 %178, 0
  br i1 %179, label %180, label %185

180:                                              ; preds = %177
  %181 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %182 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %183 = load i32, i32* %8, align 4
  %184 = call i32 @write_abst(%struct.TYPE_23__* %181, %struct.TYPE_21__* %182, i32 %183)
  store i32 %184, i32* %12, align 4
  br label %185

185:                                              ; preds = %180, %177
  %186 = load i32, i32* %12, align 4
  store i32 %186, i32* %5, align 4
  br label %187

187:                                              ; preds = %185, %86, %63, %33
  %188 = load i32, i32* %5, align 4
  ret i32 %188
}

declare dso_local i32 @avio_flush(i32) #1

declare dso_local i32 @close_file(%struct.TYPE_23__*, %struct.TYPE_21__*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i32, i32) #1

declare dso_local i32 @ff_rename(i32, i8*, %struct.TYPE_23__*) #1

declare dso_local i32 @add_fragment(%struct.TYPE_21__*, i8*, i64, i64) #1

declare dso_local i32 @init_file(%struct.TYPE_23__*, %struct.TYPE_21__*, i64) #1

declare dso_local i32 @unlink(i32) #1

declare dso_local i32 @av_freep(%struct.TYPE_24__**) #1

declare dso_local i32 @memmove(%struct.TYPE_24__**, %struct.TYPE_24__**, i32) #1

declare dso_local i32 @write_abst(%struct.TYPE_23__*, %struct.TYPE_21__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
