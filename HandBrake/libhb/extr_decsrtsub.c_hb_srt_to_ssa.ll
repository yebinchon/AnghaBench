; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_decsrtsub.c_hb_srt_to_ssa.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_decsrtsub.c_hb_srt_to_ssa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i64* }

@.str = private unnamed_addr constant [21 x i8] c"%d,,Default,,0,0,0,,\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hb_srt_to_ssa(%struct.TYPE_8__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store i32 %1, i32* %4, align 4
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  br label %223

18:                                               ; preds = %2
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 1
  %21 = load i64*, i64** %20, align 8
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = sub nsw i32 %24, 1
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i64, i64* %21, i64 %26
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %46

30:                                               ; preds = %18
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %33, align 8
  %36 = call i32 @hb_buffer_realloc(%struct.TYPE_8__* %31, i32 %35)
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 1
  %39 = load i64*, i64** %38, align 8
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = sub nsw i32 %42, 1
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i64, i64* %39, i64 %44
  store i64 0, i64* %45, align 8
  br label %46

46:                                               ; preds = %30, %18
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 1
  %49 = load i64*, i64** %48, align 8
  %50 = bitcast i64* %49 to i8*
  store i8* %50, i8** %5, align 8
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = add nsw i32 %53, 80
  %55 = call %struct.TYPE_8__* @hb_buffer_init(i32 %54)
  store %struct.TYPE_8__* %55, %struct.TYPE_8__** %6, align 8
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %58 = call i32 @hb_buffer_swap_copy(%struct.TYPE_8__* %56, %struct.TYPE_8__* %57)
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 1
  %61 = load i64*, i64** %60, align 8
  %62 = bitcast i64* %61 to i8*
  store i8* %62, i8** %7, align 8
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 1
  %65 = load i64*, i64** %64, align 8
  %66 = bitcast i64* %65 to i8*
  %67 = load i32, i32* %4, align 4
  %68 = call i32 (i8*, i8*, ...) @sprintf(i8* %66, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %67)
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 1
  %71 = load i64*, i64** %70, align 8
  %72 = bitcast i64* %71 to i8*
  %73 = call i32 @strlen(i8* %72)
  store i32 %73, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %74

74:                                               ; preds = %212, %46
  %75 = load i8*, i8** %5, align 8
  %76 = load i32, i32* %12, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8, i8* %75, i64 %77
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %213

82:                                               ; preds = %74
  %83 = load i8*, i8** %5, align 8
  %84 = load i32, i32* %12, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i8, i8* %83, i64 %85
  %87 = call i8* @srt_markup_to_ssa(i8* %86, i32* %9)
  store i8* %87, i8** %8, align 8
  %88 = icmp ne i8* %87, null
  br i1 %88, label %89, label %116

89:                                               ; preds = %82
  %90 = load i8*, i8** %8, align 8
  %91 = call i32 @strlen(i8* %90)
  store i32 %91, i32* %10, align 4
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %93 = load i32, i32* %11, align 4
  %94 = load i32, i32* %10, align 4
  %95 = add nsw i32 %93, %94
  %96 = add nsw i32 %95, 1
  %97 = call i32 @hb_buffer_realloc(%struct.TYPE_8__* %92, i32 %96)
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 1
  %100 = load i64*, i64** %99, align 8
  %101 = bitcast i64* %100 to i8*
  store i8* %101, i8** %7, align 8
  %102 = load i8*, i8** %7, align 8
  %103 = load i32, i32* %11, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i8, i8* %102, i64 %104
  %106 = load i8*, i8** %8, align 8
  %107 = call i32 (i8*, i8*, ...) @sprintf(i8* %105, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %106)
  %108 = load i8*, i8** %8, align 8
  %109 = call i32 @free(i8* %108)
  %110 = load i32, i32* %10, align 4
  %111 = load i32, i32* %11, align 4
  %112 = add nsw i32 %111, %110
  store i32 %112, i32* %11, align 4
  %113 = load i32, i32* %9, align 4
  %114 = load i32, i32* %12, align 4
  %115 = add nsw i32 %114, %113
  store i32 %115, i32* %12, align 4
  br label %212

116:                                              ; preds = %82
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %118 = load i32, i32* %11, align 4
  %119 = add nsw i32 %118, 4
  %120 = call i32 @hb_buffer_realloc(%struct.TYPE_8__* %117, i32 %119)
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 1
  %123 = load i64*, i64** %122, align 8
  %124 = bitcast i64* %123 to i8*
  store i8* %124, i8** %7, align 8
  %125 = load i8*, i8** %5, align 8
  %126 = load i32, i32* %12, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i8, i8* %125, i64 %127
  %129 = load i8, i8* %128, align 1
  %130 = sext i8 %129 to i32
  %131 = icmp eq i32 %130, 13
  br i1 %131, label %132, label %167

132:                                              ; preds = %116
  %133 = load i8*, i8** %5, align 8
  %134 = load i32, i32* %12, align 4
  %135 = add nsw i32 %134, 1
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i8, i8* %133, i64 %136
  %138 = load i8, i8* %137, align 1
  %139 = sext i8 %138 to i32
  %140 = icmp eq i32 %139, 10
  br i1 %140, label %141, label %144

141:                                              ; preds = %132
  %142 = load i32, i32* %12, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %12, align 4
  br label %144

144:                                              ; preds = %141, %132
  %145 = load i8*, i8** %5, align 8
  %146 = load i32, i32* %12, align 4
  %147 = add nsw i32 %146, 1
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i8, i8* %145, i64 %148
  %150 = load i8, i8* %149, align 1
  %151 = sext i8 %150 to i32
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %164

153:                                              ; preds = %144
  %154 = load i8*, i8** %7, align 8
  %155 = load i32, i32* %11, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %11, align 4
  %157 = sext i32 %155 to i64
  %158 = getelementptr inbounds i8, i8* %154, i64 %157
  store i8 92, i8* %158, align 1
  %159 = load i8*, i8** %7, align 8
  %160 = load i32, i32* %11, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %11, align 4
  %162 = sext i32 %160 to i64
  %163 = getelementptr inbounds i8, i8* %159, i64 %162
  store i8 78, i8* %163, align 1
  br label %164

164:                                              ; preds = %153, %144
  %165 = load i32, i32* %12, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %12, align 4
  br label %211

167:                                              ; preds = %116
  %168 = load i8*, i8** %5, align 8
  %169 = load i32, i32* %12, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i8, i8* %168, i64 %170
  %172 = load i8, i8* %171, align 1
  %173 = sext i8 %172 to i32
  %174 = icmp eq i32 %173, 10
  br i1 %174, label %175, label %198

175:                                              ; preds = %167
  %176 = load i8*, i8** %5, align 8
  %177 = load i32, i32* %12, align 4
  %178 = add nsw i32 %177, 1
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i8, i8* %176, i64 %179
  %181 = load i8, i8* %180, align 1
  %182 = sext i8 %181 to i32
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %195

184:                                              ; preds = %175
  %185 = load i8*, i8** %7, align 8
  %186 = load i32, i32* %11, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %11, align 4
  %188 = sext i32 %186 to i64
  %189 = getelementptr inbounds i8, i8* %185, i64 %188
  store i8 92, i8* %189, align 1
  %190 = load i8*, i8** %7, align 8
  %191 = load i32, i32* %11, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %11, align 4
  %193 = sext i32 %191 to i64
  %194 = getelementptr inbounds i8, i8* %190, i64 %193
  store i8 78, i8* %194, align 1
  br label %195

195:                                              ; preds = %184, %175
  %196 = load i32, i32* %12, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %12, align 4
  br label %210

198:                                              ; preds = %167
  %199 = load i8*, i8** %5, align 8
  %200 = load i32, i32* %12, align 4
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %12, align 4
  %202 = sext i32 %200 to i64
  %203 = getelementptr inbounds i8, i8* %199, i64 %202
  %204 = load i8, i8* %203, align 1
  %205 = load i8*, i8** %7, align 8
  %206 = load i32, i32* %11, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %11, align 4
  %208 = sext i32 %206 to i64
  %209 = getelementptr inbounds i8, i8* %205, i64 %208
  store i8 %204, i8* %209, align 1
  br label %210

210:                                              ; preds = %198, %195
  br label %211

211:                                              ; preds = %210, %164
  br label %212

212:                                              ; preds = %211, %89
  br label %74

213:                                              ; preds = %74
  %214 = load i8*, i8** %7, align 8
  %215 = load i32, i32* %11, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds i8, i8* %214, i64 %216
  store i8 0, i8* %217, align 1
  %218 = load i32, i32* %11, align 4
  %219 = add nsw i32 %218, 1
  %220 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %221 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %220, i32 0, i32 0
  store i32 %219, i32* %221, align 8
  %222 = call i32 @hb_buffer_close(%struct.TYPE_8__** %6)
  br label %223

223:                                              ; preds = %213, %17
  ret void
}

declare dso_local i32 @hb_buffer_realloc(%struct.TYPE_8__*, i32) #1

declare dso_local %struct.TYPE_8__* @hb_buffer_init(i32) #1

declare dso_local i32 @hb_buffer_swap_copy(%struct.TYPE_8__*, %struct.TYPE_8__*) #1

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @srt_markup_to_ssa(i8*, i32*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @hb_buffer_close(%struct.TYPE_8__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
