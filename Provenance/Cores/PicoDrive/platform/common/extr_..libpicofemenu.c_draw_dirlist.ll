; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/common/extr_..libpicofemenu.c_draw_dirlist.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/common/extr_..libpicofemenu.c_draw_dirlist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dirent = type { i64, i8* }

@g_menuscreen_h = common dso_local global i32 0, align 4
@me_sfont_h = common dso_local global i32 0, align 4
@g_menuscreen_ptr = common dso_local global i64 0, align 8
@g_menuscreen_w = common dso_local global i32 0, align 4
@me_mfont_w = common dso_local global i32 0, align 4
@DT_DIR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@me_sfont_w = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c">\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"%s - select, %s - back\00", align 1
@PBTN_MOK = common dso_local global i32 0, align 4
@PBTN_MBACK = common dso_local global i32 0, align 4
@g_menu_filter_off = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [24 x i8] c"%s - hide unknown files\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"%s - show all files\00", align 1
@PBTN_MA3 = common dso_local global i32 0, align 4
@g_autostateld_opt = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [25 x i8] c"%s - autoload save is ON\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"%s - autoload save is OFF\00", align 1
@PBTN_MA2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.dirent**, i32, i32, i32)* @draw_dirlist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @draw_dirlist(i8* %0, %struct.dirent** %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca %struct.dirent**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca [64 x i8], align 16
  %18 = alloca i16, align 2
  store i8* %0, i8** %6, align 8
  store %struct.dirent** %1, %struct.dirent*** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %19 = load i32, i32* @g_menuscreen_h, align 4
  %20 = load i32, i32* @me_sfont_h, align 4
  %21 = sdiv i32 %19, %20
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* %11, align 4
  %23 = sdiv i32 %22, 2
  %24 = load i32, i32* %9, align 4
  %25 = sub nsw i32 %23, %24
  store i32 %25, i32* %12, align 4
  %26 = load i32, i32* %8, align 4
  %27 = add nsw i32 %26, -1
  store i32 %27, i32* %8, align 4
  %28 = call i32 @menu_draw_begin(i32 1, i32 1)
  %29 = load i64, i64* @g_menuscreen_ptr, align 8
  %30 = inttoptr i64 %29 to i16*
  %31 = load i32, i32* @g_menuscreen_w, align 4
  %32 = load i32, i32* %11, align 4
  %33 = mul nsw i32 %31, %32
  %34 = sdiv i32 %33, 2
  %35 = load i32, i32* @me_sfont_h, align 4
  %36 = mul nsw i32 %34, %35
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i16, i16* %30, i64 %37
  %39 = bitcast i16* %38 to i8*
  store i8* %39, i8** %16, align 8
  %40 = load i8*, i8** %16, align 8
  %41 = load i8*, i8** %16, align 8
  %42 = load i32, i32* @g_menuscreen_w, align 4
  %43 = load i32, i32* @me_sfont_h, align 4
  %44 = mul nsw i32 %42, %43
  %45 = mul nsw i32 %44, 8
  %46 = sdiv i32 %45, 10
  %47 = call i32 @menu_darken_bg(i8* %40, i8* %41, i32 %46, i32 0)
  %48 = load i32, i32* @me_mfont_w, align 4
  %49 = add nsw i32 5, %48
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %14, align 4
  %51 = load i32, i32* %12, align 4
  %52 = sub nsw i32 %51, 2
  %53 = icmp sge i32 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %5
  %55 = load i32, i32* %12, align 4
  %56 = sub nsw i32 %55, 2
  %57 = load i32, i32* @me_sfont_h, align 4
  %58 = mul nsw i32 %56, %57
  %59 = load i8*, i8** %6, align 8
  %60 = call i32 @smalltext_out16(i32 14, i32 %58, i8* %59, i32 65535)
  br label %61

61:                                               ; preds = %54, %5
  store i32 0, i32* %13, align 4
  br label %62

62:                                               ; preds = %136, %61
  %63 = load i32, i32* %13, align 4
  %64 = load i32, i32* %8, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %139

66:                                               ; preds = %62
  %67 = load i32, i32* %12, align 4
  %68 = load i32, i32* %13, align 4
  %69 = add nsw i32 %67, %68
  store i32 %69, i32* %15, align 4
  %70 = load i32, i32* %15, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %66
  br label %136

73:                                               ; preds = %66
  %74 = load i32, i32* %15, align 4
  %75 = load i32, i32* %11, align 4
  %76 = icmp sge i32 %74, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %73
  br label %139

78:                                               ; preds = %73
  %79 = load %struct.dirent**, %struct.dirent*** %7, align 8
  %80 = load i32, i32* %13, align 4
  %81 = add nsw i32 %80, 1
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.dirent*, %struct.dirent** %79, i64 %82
  %84 = load %struct.dirent*, %struct.dirent** %83, align 8
  %85 = getelementptr inbounds %struct.dirent, %struct.dirent* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @DT_DIR, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %110

89:                                               ; preds = %78
  %90 = load i32, i32* %14, align 4
  %91 = load i32, i32* %15, align 4
  %92 = load i32, i32* @me_sfont_h, align 4
  %93 = mul nsw i32 %91, %92
  %94 = call i32 @smalltext_out16(i32 %90, i32 %93, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 65526)
  %95 = load i32, i32* %14, align 4
  %96 = load i32, i32* @me_sfont_w, align 4
  %97 = add nsw i32 %95, %96
  %98 = load i32, i32* %15, align 4
  %99 = load i32, i32* @me_sfont_h, align 4
  %100 = mul nsw i32 %98, %99
  %101 = load %struct.dirent**, %struct.dirent*** %7, align 8
  %102 = load i32, i32* %13, align 4
  %103 = add nsw i32 %102, 1
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.dirent*, %struct.dirent** %101, i64 %104
  %106 = load %struct.dirent*, %struct.dirent** %105, align 8
  %107 = getelementptr inbounds %struct.dirent, %struct.dirent* %106, i32 0, i32 1
  %108 = load i8*, i8** %107, align 8
  %109 = call i32 @smalltext_out16(i32 %97, i32 %100, i8* %108, i32 65526)
  br label %135

110:                                              ; preds = %78
  %111 = load %struct.dirent**, %struct.dirent*** %7, align 8
  %112 = load i32, i32* %13, align 4
  %113 = add nsw i32 %112, 1
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.dirent*, %struct.dirent** %111, i64 %114
  %116 = load %struct.dirent*, %struct.dirent** %115, align 8
  %117 = getelementptr inbounds %struct.dirent, %struct.dirent* %116, i32 0, i32 1
  %118 = load i8*, i8** %117, align 8
  %119 = call zeroext i16 @fname2color(i8* %118)
  store i16 %119, i16* %18, align 2
  %120 = load i32, i32* %14, align 4
  %121 = load i32, i32* %15, align 4
  %122 = load i32, i32* @me_sfont_h, align 4
  %123 = mul nsw i32 %121, %122
  %124 = load %struct.dirent**, %struct.dirent*** %7, align 8
  %125 = load i32, i32* %13, align 4
  %126 = add nsw i32 %125, 1
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.dirent*, %struct.dirent** %124, i64 %127
  %129 = load %struct.dirent*, %struct.dirent** %128, align 8
  %130 = getelementptr inbounds %struct.dirent, %struct.dirent* %129, i32 0, i32 1
  %131 = load i8*, i8** %130, align 8
  %132 = load i16, i16* %18, align 2
  %133 = zext i16 %132 to i32
  %134 = call i32 @smalltext_out16(i32 %120, i32 %123, i8* %131, i32 %133)
  br label %135

135:                                              ; preds = %110, %89
  br label %136

136:                                              ; preds = %135, %72
  %137 = load i32, i32* %13, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %13, align 4
  br label %62

139:                                              ; preds = %77, %62
  %140 = load i32, i32* %11, align 4
  %141 = sdiv i32 %140, 2
  %142 = load i32, i32* @me_sfont_h, align 4
  %143 = mul nsw i32 %141, %142
  %144 = call i32 @smalltext_out16(i32 5, i32 %143, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 65535)
  %145 = load i32, i32* %10, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %218

147:                                              ; preds = %139
  %148 = load i64, i64* @g_menuscreen_ptr, align 8
  %149 = inttoptr i64 %148 to i16*
  %150 = load i32, i32* @g_menuscreen_w, align 4
  %151 = load i32, i32* @g_menuscreen_h, align 4
  %152 = load i32, i32* @me_sfont_h, align 4
  %153 = mul nsw i32 %152, 5
  %154 = sdiv i32 %153, 2
  %155 = sub nsw i32 %151, %154
  %156 = mul nsw i32 %150, %155
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i16, i16* %149, i64 %157
  %159 = bitcast i16* %158 to i8*
  store i8* %159, i8** %16, align 8
  %160 = load i8*, i8** %16, align 8
  %161 = load i8*, i8** %16, align 8
  %162 = load i32, i32* @g_menuscreen_w, align 4
  %163 = load i32, i32* @me_sfont_h, align 4
  %164 = mul nsw i32 %163, 5
  %165 = sdiv i32 %164, 2
  %166 = mul nsw i32 %162, %165
  %167 = call i32 @menu_darken_bg(i8* %160, i8* %161, i32 %166, i32 1)
  %168 = getelementptr inbounds [64 x i8], [64 x i8]* %17, i64 0, i64 0
  %169 = load i32, i32* @PBTN_MOK, align 4
  %170 = sub nsw i32 0, %169
  %171 = call i8* @in_get_key_name(i32 -1, i32 %170)
  %172 = load i32, i32* @PBTN_MBACK, align 4
  %173 = sub nsw i32 0, %172
  %174 = call i8* @in_get_key_name(i32 -1, i32 %173)
  %175 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %168, i32 64, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i8* %171, i8* %174)
  %176 = load i32, i32* %14, align 4
  %177 = load i32, i32* @g_menuscreen_h, align 4
  %178 = load i32, i32* @me_sfont_h, align 4
  %179 = mul nsw i32 %178, 3
  %180 = sub nsw i32 %177, %179
  %181 = sub nsw i32 %180, 2
  %182 = getelementptr inbounds [64 x i8], [64 x i8]* %17, i64 0, i64 0
  %183 = call i32 @smalltext_out16(i32 %176, i32 %181, i8* %182, i32 59276)
  %184 = getelementptr inbounds [64 x i8], [64 x i8]* %17, i64 0, i64 0
  %185 = load i64, i64* @g_menu_filter_off, align 8
  %186 = icmp ne i64 %185, 0
  %187 = zext i1 %186 to i64
  %188 = select i1 %186, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0)
  %189 = load i32, i32* @PBTN_MA3, align 4
  %190 = sub nsw i32 0, %189
  %191 = call i8* @in_get_key_name(i32 -1, i32 %190)
  %192 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %184, i32 64, i8* %188, i8* %191)
  %193 = load i32, i32* %14, align 4
  %194 = load i32, i32* @g_menuscreen_h, align 4
  %195 = load i32, i32* @me_sfont_h, align 4
  %196 = mul nsw i32 %195, 2
  %197 = sub nsw i32 %194, %196
  %198 = sub nsw i32 %197, 2
  %199 = getelementptr inbounds [64 x i8], [64 x i8]* %17, i64 0, i64 0
  %200 = call i32 @smalltext_out16(i32 %193, i32 %198, i8* %199, i32 59276)
  %201 = getelementptr inbounds [64 x i8], [64 x i8]* %17, i64 0, i64 0
  %202 = load i64, i64* @g_autostateld_opt, align 8
  %203 = icmp ne i64 %202, 0
  %204 = zext i1 %203 to i64
  %205 = select i1 %203, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0)
  %206 = load i32, i32* @PBTN_MA2, align 4
  %207 = sub nsw i32 0, %206
  %208 = call i8* @in_get_key_name(i32 -1, i32 %207)
  %209 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %201, i32 64, i8* %205, i8* %208)
  %210 = load i32, i32* %14, align 4
  %211 = load i32, i32* @g_menuscreen_h, align 4
  %212 = load i32, i32* @me_sfont_h, align 4
  %213 = mul nsw i32 %212, 1
  %214 = sub nsw i32 %211, %213
  %215 = sub nsw i32 %214, 2
  %216 = getelementptr inbounds [64 x i8], [64 x i8]* %17, i64 0, i64 0
  %217 = call i32 @smalltext_out16(i32 %210, i32 %215, i8* %216, i32 59276)
  br label %218

218:                                              ; preds = %147, %139
  %219 = call i32 (...) @menu_draw_end()
  ret void
}

declare dso_local i32 @menu_draw_begin(i32, i32) #1

declare dso_local i32 @menu_darken_bg(i8*, i8*, i32, i32) #1

declare dso_local i32 @smalltext_out16(i32, i32, i8*, i32) #1

declare dso_local zeroext i16 @fname2color(i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, ...) #1

declare dso_local i8* @in_get_key_name(i32, i32) #1

declare dso_local i32 @menu_draw_end(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
