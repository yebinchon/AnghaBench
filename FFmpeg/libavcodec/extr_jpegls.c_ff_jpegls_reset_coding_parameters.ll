; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_jpegls.c_ff_jpegls_reset_coding_parameters.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_jpegls.c_ff_jpegls_reset_coding_parameters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [28 x i8] c"[JPEG-LS RESET] T=%i,%i,%i\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_jpegls_reset_coding_parameters(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 3, i32* %5, align 4
  store i32 7, i32* %6, align 4
  store i32 21, i32* %7, align 4
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %13, %2
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = shl i32 1, %19
  %21 = sub nsw i32 %20, 1
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  br label %24

24:                                               ; preds = %16, %13
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp sge i32 %27, 128
  br i1 %28, label %29, label %117

29:                                               ; preds = %24
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @FFMIN(i32 %32, i32 4095)
  %34 = add nsw i32 %33, 128
  %35 = ashr i32 %34, 8
  store i32 %35, i32* %8, align 4
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %29
  %41 = load i32, i32* %4, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %63

43:                                               ; preds = %40, %29
  %44 = load i32, i32* %8, align 4
  %45 = mul nsw i32 %44, 1
  %46 = add nsw i32 %45, 2
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = mul nsw i32 3, %49
  %51 = add nsw i32 %46, %50
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = add nsw i32 %54, 1
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i8* @iso_clip(i32 %51, i32 %55, i32 %58)
  %60 = ptrtoint i8* %59 to i32
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 2
  store i32 %60, i32* %62, align 8
  br label %63

63:                                               ; preds = %43, %40
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 8
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %63
  %69 = load i32, i32* %4, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %90

71:                                               ; preds = %68, %63
  %72 = load i32, i32* %8, align 4
  %73 = mul nsw i32 %72, 4
  %74 = add nsw i32 %73, 3
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = mul nsw i32 5, %77
  %79 = add nsw i32 %74, %78
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = call i8* @iso_clip(i32 %79, i32 %82, i32 %85)
  %87 = ptrtoint i8* %86 to i32
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 4
  store i32 %87, i32* %89, align 8
  br label %90

90:                                               ; preds = %71, %68
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 6
  %93 = load i8*, i8** %92, align 8
  %94 = icmp eq i8* %93, null
  br i1 %94, label %98, label %95

95:                                               ; preds = %90
  %96 = load i32, i32* %4, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %116

98:                                               ; preds = %95, %90
  %99 = load i32, i32* %8, align 4
  %100 = mul nsw i32 %99, 17
  %101 = add nsw i32 %100, 4
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 4
  %105 = mul nsw i32 7, %104
  %106 = add nsw i32 %101, %105
  %107 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 4
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = call i8* @iso_clip(i32 %106, i32 %109, i32 %112)
  %114 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 6
  store i8* %113, i8** %115, align 8
  br label %116

116:                                              ; preds = %98, %95
  br label %204

117:                                              ; preds = %24
  %118 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = add nsw i32 %120, 1
  %122 = sdiv i32 256, %121
  store i32 %122, i32* %8, align 4
  %123 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %130, label %127

127:                                              ; preds = %117
  %128 = load i32, i32* %4, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %150

130:                                              ; preds = %127, %117
  %131 = load i32, i32* %8, align 4
  %132 = sdiv i32 3, %131
  %133 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 3
  %135 = load i32, i32* %134, align 4
  %136 = mul nsw i32 3, %135
  %137 = add nsw i32 %132, %136
  %138 = call i32 @FFMAX(i32 2, i32 %137)
  %139 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i32 0, i32 3
  %141 = load i32, i32* %140, align 4
  %142 = add nsw i32 %141, 1
  %143 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %144 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = call i8* @iso_clip(i32 %138, i32 %142, i32 %145)
  %147 = ptrtoint i8* %146 to i32
  %148 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %149 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %148, i32 0, i32 2
  store i32 %147, i32* %149, align 8
  br label %150

150:                                              ; preds = %130, %127
  %151 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %152 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %151, i32 0, i32 4
  %153 = load i32, i32* %152, align 8
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %158, label %155

155:                                              ; preds = %150
  %156 = load i32, i32* %4, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %177

158:                                              ; preds = %155, %150
  %159 = load i32, i32* %8, align 4
  %160 = sdiv i32 7, %159
  %161 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %162 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %161, i32 0, i32 3
  %163 = load i32, i32* %162, align 4
  %164 = mul nsw i32 5, %163
  %165 = add nsw i32 %160, %164
  %166 = call i32 @FFMAX(i32 3, i32 %165)
  %167 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %168 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 8
  %170 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %171 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = call i8* @iso_clip(i32 %166, i32 %169, i32 %172)
  %174 = ptrtoint i8* %173 to i32
  %175 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %176 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %175, i32 0, i32 4
  store i32 %174, i32* %176, align 8
  br label %177

177:                                              ; preds = %158, %155
  %178 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %179 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %178, i32 0, i32 6
  %180 = load i8*, i8** %179, align 8
  %181 = icmp eq i8* %180, null
  br i1 %181, label %185, label %182

182:                                              ; preds = %177
  %183 = load i32, i32* %4, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %203

185:                                              ; preds = %182, %177
  %186 = load i32, i32* %8, align 4
  %187 = sdiv i32 21, %186
  %188 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %189 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %188, i32 0, i32 3
  %190 = load i32, i32* %189, align 4
  %191 = mul nsw i32 7, %190
  %192 = add nsw i32 %187, %191
  %193 = call i32 @FFMAX(i32 4, i32 %192)
  %194 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %195 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %194, i32 0, i32 4
  %196 = load i32, i32* %195, align 8
  %197 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %198 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = call i8* @iso_clip(i32 %193, i32 %196, i32 %199)
  %201 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %202 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %201, i32 0, i32 6
  store i8* %200, i8** %202, align 8
  br label %203

203:                                              ; preds = %185, %182
  br label %204

204:                                              ; preds = %203, %116
  %205 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %206 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %205, i32 0, i32 5
  %207 = load i32, i32* %206, align 4
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %212, label %209

209:                                              ; preds = %204
  %210 = load i32, i32* %4, align 4
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %215

212:                                              ; preds = %209, %204
  %213 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %214 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %213, i32 0, i32 5
  store i32 64, i32* %214, align 4
  br label %215

215:                                              ; preds = %212, %209
  %216 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %217 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %216, i32 0, i32 2
  %218 = load i32, i32* %217, align 8
  %219 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %220 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %219, i32 0, i32 4
  %221 = load i32, i32* %220, align 8
  %222 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %223 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %222, i32 0, i32 6
  %224 = load i8*, i8** %223, align 8
  %225 = call i32 @ff_dlog(i32* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %218, i32 %221, i8* %224)
  ret void
}

declare dso_local i32 @FFMIN(i32, i32) #1

declare dso_local i8* @iso_clip(i32, i32, i32) #1

declare dso_local i32 @FFMAX(i32, i32) #1

declare dso_local i32 @ff_dlog(i32*, i8*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
