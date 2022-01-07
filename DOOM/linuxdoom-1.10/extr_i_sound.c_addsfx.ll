; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_i_sound.c_addsfx.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_i_sound.c_addsfx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@addsfx.handlenums = internal global i16 0, align 2
@gametic = common dso_local global i32 0, align 4
@sfx_sawup = common dso_local global i32 0, align 4
@sfx_sawidl = common dso_local global i32 0, align 4
@sfx_sawful = common dso_local global i32 0, align 4
@sfx_sawhit = common dso_local global i32 0, align 4
@sfx_stnmov = common dso_local global i32 0, align 4
@sfx_pistol = common dso_local global i32 0, align 4
@NUM_CHANNELS = common dso_local global i32 0, align 4
@channels = common dso_local global i8** null, align 8
@channelids = common dso_local global i32* null, align 8
@channelstart = common dso_local global i32* null, align 8
@S_sfx = common dso_local global %struct.TYPE_2__* null, align 8
@lengths = common dso_local global i32* null, align 8
@channelsend = common dso_local global i8** null, align 8
@channelhandles = common dso_local global i32* null, align 8
@channelstep = common dso_local global i32* null, align 8
@channelstepremainder = common dso_local global i64* null, align 8
@.str = private unnamed_addr constant [23 x i8] c"rightvol out of bounds\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"leftvol out of bounds\00", align 1
@vol_lookup = common dso_local global i32* null, align 8
@channelleftvol_lookup = common dso_local global i32** null, align 8
@channelrightvol_lookup = common dso_local global i32** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @addsfx(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 -1, i32* %10, align 4
  %16 = load i32, i32* @gametic, align 4
  store i32 %16, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @sfx_sawup, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %40, label %20

20:                                               ; preds = %4
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @sfx_sawidl, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %40, label %24

24:                                               ; preds = %20
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @sfx_sawful, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %40, label %28

28:                                               ; preds = %24
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @sfx_sawhit, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %40, label %32

32:                                               ; preds = %28
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @sfx_stnmov, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %40, label %36

36:                                               ; preds = %32
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @sfx_pistol, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %70

40:                                               ; preds = %36, %32, %28, %24, %20, %4
  store i32 0, i32* %9, align 4
  br label %41

41:                                               ; preds = %66, %40
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* @NUM_CHANNELS, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %69

45:                                               ; preds = %41
  %46 = load i8**, i8*** @channels, align 8
  %47 = load i32, i32* %9, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8*, i8** %46, i64 %48
  %50 = load i8*, i8** %49, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %52, label %65

52:                                               ; preds = %45
  %53 = load i32*, i32** @channelids, align 8
  %54 = load i32, i32* %9, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %5, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %65

60:                                               ; preds = %52
  %61 = load i8**, i8*** @channels, align 8
  %62 = load i32, i32* %9, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8*, i8** %61, i64 %63
  store i8* null, i8** %64, align 8
  br label %69

65:                                               ; preds = %52, %45
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %9, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %9, align 4
  br label %41

69:                                               ; preds = %60, %41
  br label %70

70:                                               ; preds = %69, %36
  store i32 0, i32* %9, align 4
  br label %71

71:                                               ; preds = %100, %70
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* @NUM_CHANNELS, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %82

75:                                               ; preds = %71
  %76 = load i8**, i8*** @channels, align 8
  %77 = load i32, i32* %9, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i8*, i8** %76, i64 %78
  %80 = load i8*, i8** %79, align 8
  %81 = icmp ne i8* %80, null
  br label %82

82:                                               ; preds = %75, %71
  %83 = phi i1 [ false, %71 ], [ %81, %75 ]
  br i1 %83, label %84, label %103

84:                                               ; preds = %82
  %85 = load i32*, i32** @channelstart, align 8
  %86 = load i32, i32* %9, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %11, align 4
  %91 = icmp slt i32 %89, %90
  br i1 %91, label %92, label %99

92:                                               ; preds = %84
  %93 = load i32, i32* %9, align 4
  store i32 %93, i32* %12, align 4
  %94 = load i32*, i32** @channelstart, align 8
  %95 = load i32, i32* %9, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  %98 = load i32, i32* %97, align 4
  store i32 %98, i32* %11, align 4
  br label %99

99:                                               ; preds = %92, %84
  br label %100

100:                                              ; preds = %99
  %101 = load i32, i32* %9, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %9, align 4
  br label %71

103:                                              ; preds = %82
  %104 = load i32, i32* %9, align 4
  %105 = load i32, i32* @NUM_CHANNELS, align 4
  %106 = icmp eq i32 %104, %105
  br i1 %106, label %107, label %109

107:                                              ; preds = %103
  %108 = load i32, i32* %12, align 4
  store i32 %108, i32* %13, align 4
  br label %111

109:                                              ; preds = %103
  %110 = load i32, i32* %9, align 4
  store i32 %110, i32* %13, align 4
  br label %111

111:                                              ; preds = %109, %107
  %112 = load %struct.TYPE_2__*, %struct.TYPE_2__** @S_sfx, align 8
  %113 = load i32, i32* %5, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = inttoptr i64 %117 to i8*
  %119 = load i8**, i8*** @channels, align 8
  %120 = load i32, i32* %13, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i8*, i8** %119, i64 %121
  store i8* %118, i8** %122, align 8
  %123 = load i8**, i8*** @channels, align 8
  %124 = load i32, i32* %13, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i8*, i8** %123, i64 %125
  %127 = load i8*, i8** %126, align 8
  %128 = load i32*, i32** @lengths, align 8
  %129 = load i32, i32* %5, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %128, i64 %130
  %132 = load i32, i32* %131, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i8, i8* %127, i64 %133
  %135 = load i8**, i8*** @channelsend, align 8
  %136 = load i32, i32* %13, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i8*, i8** %135, i64 %137
  store i8* %134, i8** %138, align 8
  %139 = load i16, i16* @addsfx.handlenums, align 2
  %140 = icmp ne i16 %139, 0
  br i1 %140, label %142, label %141

141:                                              ; preds = %111
  store i16 100, i16* @addsfx.handlenums, align 2
  br label %142

142:                                              ; preds = %141, %111
  %143 = load i16, i16* @addsfx.handlenums, align 2
  %144 = add i16 %143, 1
  store i16 %144, i16* @addsfx.handlenums, align 2
  %145 = zext i16 %143 to i32
  store i32 %145, i32* %10, align 4
  %146 = load i32*, i32** @channelhandles, align 8
  %147 = load i32, i32* %13, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i32, i32* %146, i64 %148
  store i32 %145, i32* %149, align 4
  %150 = load i32, i32* %7, align 4
  %151 = load i32*, i32** @channelstep, align 8
  %152 = load i32, i32* %13, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i32, i32* %151, i64 %153
  store i32 %150, i32* %154, align 4
  %155 = load i64*, i64** @channelstepremainder, align 8
  %156 = load i32, i32* %13, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i64, i64* %155, i64 %157
  store i64 0, i64* %158, align 8
  %159 = load i32, i32* @gametic, align 4
  %160 = load i32*, i32** @channelstart, align 8
  %161 = load i32, i32* %13, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i32, i32* %160, i64 %162
  store i32 %159, i32* %163, align 4
  %164 = load i32, i32* %8, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %8, align 4
  %166 = load i32, i32* %6, align 4
  %167 = load i32, i32* %6, align 4
  %168 = load i32, i32* %8, align 4
  %169 = mul nsw i32 %167, %168
  %170 = load i32, i32* %8, align 4
  %171 = mul nsw i32 %169, %170
  %172 = ashr i32 %171, 16
  %173 = sub nsw i32 %166, %172
  store i32 %173, i32* %15, align 4
  %174 = load i32, i32* %8, align 4
  %175 = sub nsw i32 %174, 257
  store i32 %175, i32* %8, align 4
  %176 = load i32, i32* %6, align 4
  %177 = load i32, i32* %6, align 4
  %178 = load i32, i32* %8, align 4
  %179 = mul nsw i32 %177, %178
  %180 = load i32, i32* %8, align 4
  %181 = mul nsw i32 %179, %180
  %182 = ashr i32 %181, 16
  %183 = sub nsw i32 %176, %182
  store i32 %183, i32* %14, align 4
  %184 = load i32, i32* %14, align 4
  %185 = icmp slt i32 %184, 0
  br i1 %185, label %189, label %186

186:                                              ; preds = %142
  %187 = load i32, i32* %14, align 4
  %188 = icmp sgt i32 %187, 127
  br i1 %188, label %189, label %191

189:                                              ; preds = %186, %142
  %190 = call i32 @I_Error(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %191

191:                                              ; preds = %189, %186
  %192 = load i32, i32* %15, align 4
  %193 = icmp slt i32 %192, 0
  br i1 %193, label %197, label %194

194:                                              ; preds = %191
  %195 = load i32, i32* %15, align 4
  %196 = icmp sgt i32 %195, 127
  br i1 %196, label %197, label %199

197:                                              ; preds = %194, %191
  %198 = call i32 @I_Error(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %199

199:                                              ; preds = %197, %194
  %200 = load i32*, i32** @vol_lookup, align 8
  %201 = load i32, i32* %15, align 4
  %202 = mul nsw i32 %201, 256
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i32, i32* %200, i64 %203
  %205 = load i32**, i32*** @channelleftvol_lookup, align 8
  %206 = load i32, i32* %13, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i32*, i32** %205, i64 %207
  store i32* %204, i32** %208, align 8
  %209 = load i32*, i32** @vol_lookup, align 8
  %210 = load i32, i32* %14, align 4
  %211 = mul nsw i32 %210, 256
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds i32, i32* %209, i64 %212
  %214 = load i32**, i32*** @channelrightvol_lookup, align 8
  %215 = load i32, i32* %13, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds i32*, i32** %214, i64 %216
  store i32* %213, i32** %217, align 8
  %218 = load i32, i32* %5, align 4
  %219 = load i32*, i32** @channelids, align 8
  %220 = load i32, i32* %13, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds i32, i32* %219, i64 %221
  store i32 %218, i32* %222, align 4
  %223 = load i32, i32* %10, align 4
  ret i32 %223
}

declare dso_local i32 @I_Error(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
