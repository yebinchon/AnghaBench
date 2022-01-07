; ModuleID = '/home/carl/AnghaBench/DOOM/sndserv/extr_soundsrv.c_addsfx.c'
source_filename = "/home/carl/AnghaBench/DOOM/sndserv/extr_soundsrv.c_addsfx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@addsfx.handlenums = internal global i16 0, align 2
@mytime = common dso_local global i32 0, align 4
@sfx_sawup = common dso_local global i32 0, align 4
@sfx_sawidl = common dso_local global i32 0, align 4
@sfx_sawful = common dso_local global i32 0, align 4
@sfx_sawhit = common dso_local global i32 0, align 4
@sfx_stnmov = common dso_local global i32 0, align 4
@sfx_pistol = common dso_local global i32 0, align 4
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
  %16 = load i32, i32* @mytime, align 4
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
  br i1 %39, label %40, label %69

40:                                               ; preds = %36, %32, %28, %24, %20, %4
  store i32 0, i32* %9, align 4
  br label %41

41:                                               ; preds = %65, %40
  %42 = load i32, i32* %9, align 4
  %43 = icmp slt i32 %42, 8
  br i1 %43, label %44, label %68

44:                                               ; preds = %41
  %45 = load i8**, i8*** @channels, align 8
  %46 = load i32, i32* %9, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8*, i8** %45, i64 %47
  %49 = load i8*, i8** %48, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %51, label %64

51:                                               ; preds = %44
  %52 = load i32*, i32** @channelids, align 8
  %53 = load i32, i32* %9, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %5, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %64

59:                                               ; preds = %51
  %60 = load i8**, i8*** @channels, align 8
  %61 = load i32, i32* %9, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8*, i8** %60, i64 %62
  store i8* null, i8** %63, align 8
  br label %68

64:                                               ; preds = %51, %44
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %9, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %9, align 4
  br label %41

68:                                               ; preds = %59, %41
  br label %69

69:                                               ; preds = %68, %36
  store i32 0, i32* %9, align 4
  br label %70

70:                                               ; preds = %98, %69
  %71 = load i32, i32* %9, align 4
  %72 = icmp slt i32 %71, 8
  br i1 %72, label %73, label %80

73:                                               ; preds = %70
  %74 = load i8**, i8*** @channels, align 8
  %75 = load i32, i32* %9, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8*, i8** %74, i64 %76
  %78 = load i8*, i8** %77, align 8
  %79 = icmp ne i8* %78, null
  br label %80

80:                                               ; preds = %73, %70
  %81 = phi i1 [ false, %70 ], [ %79, %73 ]
  br i1 %81, label %82, label %101

82:                                               ; preds = %80
  %83 = load i32*, i32** @channelstart, align 8
  %84 = load i32, i32* %9, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %11, align 4
  %89 = icmp slt i32 %87, %88
  br i1 %89, label %90, label %97

90:                                               ; preds = %82
  %91 = load i32, i32* %9, align 4
  store i32 %91, i32* %12, align 4
  %92 = load i32*, i32** @channelstart, align 8
  %93 = load i32, i32* %9, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  %96 = load i32, i32* %95, align 4
  store i32 %96, i32* %11, align 4
  br label %97

97:                                               ; preds = %90, %82
  br label %98

98:                                               ; preds = %97
  %99 = load i32, i32* %9, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %9, align 4
  br label %70

101:                                              ; preds = %80
  %102 = load i32, i32* %9, align 4
  %103 = icmp eq i32 %102, 8
  br i1 %103, label %104, label %106

104:                                              ; preds = %101
  %105 = load i32, i32* %12, align 4
  store i32 %105, i32* %13, align 4
  br label %108

106:                                              ; preds = %101
  %107 = load i32, i32* %9, align 4
  store i32 %107, i32* %13, align 4
  br label %108

108:                                              ; preds = %106, %104
  %109 = load %struct.TYPE_2__*, %struct.TYPE_2__** @S_sfx, align 8
  %110 = load i32, i32* %5, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = inttoptr i64 %114 to i8*
  %116 = load i8**, i8*** @channels, align 8
  %117 = load i32, i32* %13, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i8*, i8** %116, i64 %118
  store i8* %115, i8** %119, align 8
  %120 = load i8**, i8*** @channels, align 8
  %121 = load i32, i32* %13, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i8*, i8** %120, i64 %122
  %124 = load i8*, i8** %123, align 8
  %125 = load i32*, i32** @lengths, align 8
  %126 = load i32, i32* %5, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %125, i64 %127
  %129 = load i32, i32* %128, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i8, i8* %124, i64 %130
  %132 = load i8**, i8*** @channelsend, align 8
  %133 = load i32, i32* %13, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i8*, i8** %132, i64 %134
  store i8* %131, i8** %135, align 8
  %136 = load i16, i16* @addsfx.handlenums, align 2
  %137 = icmp ne i16 %136, 0
  br i1 %137, label %139, label %138

138:                                              ; preds = %108
  store i16 100, i16* @addsfx.handlenums, align 2
  br label %139

139:                                              ; preds = %138, %108
  %140 = load i16, i16* @addsfx.handlenums, align 2
  %141 = add i16 %140, 1
  store i16 %141, i16* @addsfx.handlenums, align 2
  %142 = zext i16 %140 to i32
  store i32 %142, i32* %10, align 4
  %143 = load i32*, i32** @channelhandles, align 8
  %144 = load i32, i32* %13, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i32, i32* %143, i64 %145
  store i32 %142, i32* %146, align 4
  %147 = load i32, i32* %7, align 4
  %148 = load i32*, i32** @channelstep, align 8
  %149 = load i32, i32* %13, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i32, i32* %148, i64 %150
  store i32 %147, i32* %151, align 4
  %152 = load i64*, i64** @channelstepremainder, align 8
  %153 = load i32, i32* %13, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i64, i64* %152, i64 %154
  store i64 0, i64* %155, align 8
  %156 = load i32, i32* @mytime, align 4
  %157 = load i32*, i32** @channelstart, align 8
  %158 = load i32, i32* %13, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i32, i32* %157, i64 %159
  store i32 %156, i32* %160, align 4
  %161 = load i32, i32* %8, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %8, align 4
  %163 = load i32, i32* %6, align 4
  %164 = load i32, i32* %6, align 4
  %165 = load i32, i32* %8, align 4
  %166 = mul nsw i32 %164, %165
  %167 = load i32, i32* %8, align 4
  %168 = mul nsw i32 %166, %167
  %169 = sdiv i32 %168, 65536
  %170 = sub nsw i32 %163, %169
  store i32 %170, i32* %15, align 4
  %171 = load i32, i32* %8, align 4
  %172 = sub nsw i32 %171, 257
  store i32 %172, i32* %8, align 4
  %173 = load i32, i32* %6, align 4
  %174 = load i32, i32* %6, align 4
  %175 = load i32, i32* %8, align 4
  %176 = mul nsw i32 %174, %175
  %177 = load i32, i32* %8, align 4
  %178 = mul nsw i32 %176, %177
  %179 = sdiv i32 %178, 65536
  %180 = sub nsw i32 %173, %179
  store i32 %180, i32* %14, align 4
  %181 = load i32, i32* %14, align 4
  %182 = icmp slt i32 %181, 0
  br i1 %182, label %186, label %183

183:                                              ; preds = %139
  %184 = load i32, i32* %14, align 4
  %185 = icmp sgt i32 %184, 127
  br i1 %185, label %186, label %188

186:                                              ; preds = %183, %139
  %187 = call i32 @derror(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %188

188:                                              ; preds = %186, %183
  %189 = load i32, i32* %15, align 4
  %190 = icmp slt i32 %189, 0
  br i1 %190, label %194, label %191

191:                                              ; preds = %188
  %192 = load i32, i32* %15, align 4
  %193 = icmp sgt i32 %192, 127
  br i1 %193, label %194, label %196

194:                                              ; preds = %191, %188
  %195 = call i32 @derror(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %196

196:                                              ; preds = %194, %191
  %197 = load i32*, i32** @vol_lookup, align 8
  %198 = load i32, i32* %15, align 4
  %199 = mul nsw i32 %198, 256
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i32, i32* %197, i64 %200
  %202 = load i32**, i32*** @channelleftvol_lookup, align 8
  %203 = load i32, i32* %13, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i32*, i32** %202, i64 %204
  store i32* %201, i32** %205, align 8
  %206 = load i32*, i32** @vol_lookup, align 8
  %207 = load i32, i32* %14, align 4
  %208 = mul nsw i32 %207, 256
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds i32, i32* %206, i64 %209
  %211 = load i32**, i32*** @channelrightvol_lookup, align 8
  %212 = load i32, i32* %13, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i32*, i32** %211, i64 %213
  store i32* %210, i32** %214, align 8
  %215 = load i32, i32* %5, align 4
  %216 = load i32*, i32** @channelids, align 8
  %217 = load i32, i32* %13, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds i32, i32* %216, i64 %218
  store i32 %215, i32* %219, align 4
  %220 = load i32, i32* %10, align 4
  ret i32 %220
}

declare dso_local i32 @derror(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
