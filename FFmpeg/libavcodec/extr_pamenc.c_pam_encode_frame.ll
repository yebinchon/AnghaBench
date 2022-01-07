; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_pamenc.c_pam_encode_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_pamenc.c_pam_encode_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i32 }
%struct.TYPE_9__ = type { i32*, i32, i32 }
%struct.TYPE_10__ = type { i32**, i32* }

@.str = private unnamed_addr constant [14 x i8] c"BLACKANDWHITE\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"GRAYSCALE\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"GRAYSCALE_ALPHA\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"RGB\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"RGB_ALPHA\00", align 1
@.str.5 = private unnamed_addr constant [61 x i8] c"P7\0AWIDTH %d\0AHEIGHT %d\0ADEPTH %d\0AMAXVAL %d\0ATUPLTYPE %s\0AENDHDR\0A\00", align 1
@AV_PKT_FLAG_KEY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, %struct.TYPE_9__*, %struct.TYPE_10__*, i32*)* @pam_encode_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pam_encode_frame(%struct.TYPE_11__* %0, %struct.TYPE_9__* %1, %struct.TYPE_10__* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %6, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %7, align 8
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %8, align 8
  store i32* %3, i32** %9, align 8
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %14, align 4
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %15, align 4
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  switch i32 %32, label %58 [
    i32 133, label %33
    i32 135, label %35
    i32 136, label %37
    i32 134, label %40
    i32 128, label %43
    i32 132, label %46
    i32 130, label %49
    i32 131, label %52
    i32 129, label %55
  ]

33:                                               ; preds = %4
  %34 = load i32, i32* %15, align 4
  store i32 %34, i32* %16, align 4
  store i32 1, i32* %18, align 4
  store i32 1, i32* %19, align 4
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8** %21, align 8
  br label %59

35:                                               ; preds = %4
  %36 = load i32, i32* %15, align 4
  store i32 %36, i32* %16, align 4
  store i32 1, i32* %18, align 4
  store i32 255, i32* %19, align 4
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8** %21, align 8
  br label %59

37:                                               ; preds = %4
  %38 = load i32, i32* %15, align 4
  %39 = mul nsw i32 %38, 2
  store i32 %39, i32* %16, align 4
  store i32 1, i32* %18, align 4
  store i32 65535, i32* %19, align 4
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8** %21, align 8
  br label %59

40:                                               ; preds = %4
  %41 = load i32, i32* %15, align 4
  %42 = mul nsw i32 %41, 2
  store i32 %42, i32* %16, align 4
  store i32 2, i32* %18, align 4
  store i32 255, i32* %19, align 4
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8** %21, align 8
  br label %59

43:                                               ; preds = %4
  %44 = load i32, i32* %15, align 4
  %45 = mul nsw i32 %44, 4
  store i32 %45, i32* %16, align 4
  store i32 2, i32* %18, align 4
  store i32 65535, i32* %19, align 4
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8** %21, align 8
  br label %59

46:                                               ; preds = %4
  %47 = load i32, i32* %15, align 4
  %48 = mul nsw i32 %47, 3
  store i32 %48, i32* %16, align 4
  store i32 3, i32* %18, align 4
  store i32 255, i32* %19, align 4
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8** %21, align 8
  br label %59

49:                                               ; preds = %4
  %50 = load i32, i32* %15, align 4
  %51 = mul nsw i32 %50, 4
  store i32 %51, i32* %16, align 4
  store i32 4, i32* %18, align 4
  store i32 255, i32* %19, align 4
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8** %21, align 8
  br label %59

52:                                               ; preds = %4
  %53 = load i32, i32* %15, align 4
  %54 = mul nsw i32 %53, 6
  store i32 %54, i32* %16, align 4
  store i32 3, i32* %18, align 4
  store i32 65535, i32* %19, align 4
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8** %21, align 8
  br label %59

55:                                               ; preds = %4
  %56 = load i32, i32* %15, align 4
  %57 = mul nsw i32 %56, 8
  store i32 %57, i32* %16, align 4
  store i32 4, i32* %18, align 4
  store i32 65535, i32* %19, align 4
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8** %21, align 8
  br label %59

58:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %189

59:                                               ; preds = %55, %52, %49, %46, %43, %40, %37, %35, %33
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %62 = load i32, i32* %16, align 4
  %63 = load i32, i32* %14, align 4
  %64 = mul nsw i32 %62, %63
  %65 = add nsw i32 %64, 200
  %66 = call i32 @ff_alloc_packet2(%struct.TYPE_11__* %60, %struct.TYPE_9__* %61, i32 %65, i32 0)
  store i32 %66, i32* %20, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %59
  %69 = load i32, i32* %20, align 4
  store i32 %69, i32* %5, align 4
  br label %189

70:                                               ; preds = %59
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  store i32* %73, i32** %11, align 8
  store i32* %73, i32** %10, align 8
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %76, i64 %80
  store i32* %81, i32** %12, align 8
  %82 = load i32*, i32** %11, align 8
  %83 = load i32*, i32** %12, align 8
  %84 = load i32*, i32** %11, align 8
  %85 = ptrtoint i32* %83 to i64
  %86 = ptrtoint i32* %84 to i64
  %87 = sub i64 %85, %86
  %88 = sdiv exact i64 %87, 4
  %89 = trunc i64 %88 to i32
  %90 = load i32, i32* %15, align 4
  %91 = load i32, i32* %14, align 4
  %92 = load i32, i32* %18, align 4
  %93 = load i32, i32* %19, align 4
  %94 = load i8*, i8** %21, align 8
  %95 = call i32 @snprintf(i32* %82, i32 %89, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.5, i64 0, i64 0), i32 %90, i32 %91, i32 %92, i32 %93, i8* %94)
  %96 = load i32*, i32** %11, align 8
  %97 = call i32 @strlen(i32* %96)
  %98 = load i32*, i32** %11, align 8
  %99 = sext i32 %97 to i64
  %100 = getelementptr inbounds i32, i32* %98, i64 %99
  store i32* %100, i32** %11, align 8
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 0
  %103 = load i32**, i32*** %102, align 8
  %104 = getelementptr inbounds i32*, i32** %103, i64 0
  %105 = load i32*, i32** %104, align 8
  store i32* %105, i32** %22, align 8
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 1
  %108 = load i32*, i32** %107, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 0
  %110 = load i32, i32* %109, align 4
  store i32 %110, i32* %17, align 4
  %111 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 4
  %114 = icmp eq i32 %113, 133
  br i1 %114, label %115, label %151

115:                                              ; preds = %70
  store i32 0, i32* %13, align 4
  br label %116

116:                                              ; preds = %147, %115
  %117 = load i32, i32* %13, align 4
  %118 = load i32, i32* %14, align 4
  %119 = icmp slt i32 %117, %118
  br i1 %119, label %120, label %150

120:                                              ; preds = %116
  store i32 0, i32* %23, align 4
  br label %121

121:                                              ; preds = %139, %120
  %122 = load i32, i32* %23, align 4
  %123 = load i32, i32* %15, align 4
  %124 = icmp slt i32 %122, %123
  br i1 %124, label %125, label %142

125:                                              ; preds = %121
  %126 = load i32*, i32** %22, align 8
  %127 = load i32, i32* %23, align 4
  %128 = ashr i32 %127, 3
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %126, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* %23, align 4
  %133 = sub nsw i32 7, %132
  %134 = and i32 %133, 7
  %135 = ashr i32 %131, %134
  %136 = and i32 %135, 1
  %137 = load i32*, i32** %11, align 8
  %138 = getelementptr inbounds i32, i32* %137, i32 1
  store i32* %138, i32** %11, align 8
  store i32 %136, i32* %137, align 4
  br label %139

139:                                              ; preds = %125
  %140 = load i32, i32* %23, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %23, align 4
  br label %121

142:                                              ; preds = %121
  %143 = load i32, i32* %17, align 4
  %144 = load i32*, i32** %22, align 8
  %145 = sext i32 %143 to i64
  %146 = getelementptr inbounds i32, i32* %144, i64 %145
  store i32* %146, i32** %22, align 8
  br label %147

147:                                              ; preds = %142
  %148 = load i32, i32* %13, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %13, align 4
  br label %116

150:                                              ; preds = %116
  br label %173

151:                                              ; preds = %70
  store i32 0, i32* %13, align 4
  br label %152

152:                                              ; preds = %169, %151
  %153 = load i32, i32* %13, align 4
  %154 = load i32, i32* %14, align 4
  %155 = icmp slt i32 %153, %154
  br i1 %155, label %156, label %172

156:                                              ; preds = %152
  %157 = load i32*, i32** %11, align 8
  %158 = load i32*, i32** %22, align 8
  %159 = load i32, i32* %16, align 4
  %160 = call i32 @memcpy(i32* %157, i32* %158, i32 %159)
  %161 = load i32, i32* %16, align 4
  %162 = load i32*, i32** %11, align 8
  %163 = sext i32 %161 to i64
  %164 = getelementptr inbounds i32, i32* %162, i64 %163
  store i32* %164, i32** %11, align 8
  %165 = load i32, i32* %17, align 4
  %166 = load i32*, i32** %22, align 8
  %167 = sext i32 %165 to i64
  %168 = getelementptr inbounds i32, i32* %166, i64 %167
  store i32* %168, i32** %22, align 8
  br label %169

169:                                              ; preds = %156
  %170 = load i32, i32* %13, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %13, align 4
  br label %152

172:                                              ; preds = %152
  br label %173

173:                                              ; preds = %172, %150
  %174 = load i32*, i32** %11, align 8
  %175 = load i32*, i32** %10, align 8
  %176 = ptrtoint i32* %174 to i64
  %177 = ptrtoint i32* %175 to i64
  %178 = sub i64 %176, %177
  %179 = sdiv exact i64 %178, 4
  %180 = trunc i64 %179 to i32
  %181 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %182 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %181, i32 0, i32 1
  store i32 %180, i32* %182, align 8
  %183 = load i32, i32* @AV_PKT_FLAG_KEY, align 4
  %184 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %185 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 4
  %187 = or i32 %186, %183
  store i32 %187, i32* %185, align 4
  %188 = load i32*, i32** %9, align 8
  store i32 1, i32* %188, align 4
  store i32 0, i32* %5, align 4
  br label %189

189:                                              ; preds = %173, %68, %58
  %190 = load i32, i32* %5, align 4
  ret i32 %190
}

declare dso_local i32 @ff_alloc_packet2(%struct.TYPE_11__*, %struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @snprintf(i32*, i32, i8*, i32, i32, i32, i32, i8*) #1

declare dso_local i32 @strlen(i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
