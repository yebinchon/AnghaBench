; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/common/extr_..libpicofemenu.c_draw_key_config.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/common/extr_..libpicofemenu.c_draw_key_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@me_mfont_w = common dso_local global i32 0, align 4
@g_menuscreen_w = common dso_local global i32 0, align 4
@g_menuscreen_h = common dso_local global i32 0, align 4
@me_mfont_h = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Player %i controls\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"Emulator controls\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"%s : %s\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"(all devices)\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@PBTN_MOK = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [22 x i8] c"%s - bind, %s - clear\00", align 1
@PBTN_MA2 = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [30 x i8] c"Press a button to bind/unbind\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"Press left/right for other devs\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32, i32, i32, i32, i32, i32)* @draw_key_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @draw_key_config(%struct.TYPE_3__* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca [64 x i8], align 16
  %16 = alloca [32 x i8], align 16
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %22 = load i32, i32* %10, align 4
  %23 = icmp sge i32 %22, 0
  %24 = zext i1 %23 to i64
  %25 = select i1 %23, i32 20, i32 30
  %26 = load i32, i32* @me_mfont_w, align 4
  %27 = mul nsw i32 %25, %26
  store i32 %27, i32* %20, align 4
  %28 = load i32, i32* @g_menuscreen_w, align 4
  %29 = sdiv i32 %28, 2
  %30 = load i32, i32* %20, align 4
  %31 = sdiv i32 %30, 2
  %32 = sub nsw i32 %29, %31
  store i32 %32, i32* %18, align 4
  %33 = load i32, i32* @g_menuscreen_h, align 4
  %34 = load i32, i32* @me_mfont_h, align 4
  %35 = mul nsw i32 4, %34
  %36 = sub nsw i32 %33, %35
  %37 = sdiv i32 %36, 2
  %38 = load i32, i32* %9, align 4
  %39 = add nsw i32 2, %38
  %40 = load i32, i32* @me_mfont_h, align 4
  %41 = mul nsw i32 %39, %40
  %42 = sdiv i32 %41, 2
  %43 = sub nsw i32 %37, %42
  store i32 %43, i32* %19, align 4
  %44 = load i32, i32* %18, align 4
  %45 = load i32, i32* @me_mfont_w, align 4
  %46 = mul nsw i32 %45, 2
  %47 = icmp slt i32 %44, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %7
  %49 = load i32, i32* @me_mfont_w, align 4
  %50 = mul nsw i32 %49, 2
  store i32 %50, i32* %18, align 4
  br label %51

51:                                               ; preds = %48, %7
  %52 = call i32 @menu_draw_begin(i32 1, i32 0)
  %53 = load i32, i32* %10, align 4
  %54 = icmp sge i32 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %51
  %56 = load i32, i32* %18, align 4
  %57 = load i32, i32* %19, align 4
  %58 = load i32, i32* %10, align 4
  %59 = add nsw i32 %58, 1
  %60 = call i32 (i32, i32, i8*, ...) @text_out16(i32 %56, i32 %57, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %59)
  br label %65

61:                                               ; preds = %51
  %62 = load i32, i32* %18, align 4
  %63 = load i32, i32* %19, align 4
  %64 = call i32 (i32, i32, i8*, ...) @text_out16(i32 %62, i32 %63, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %65

65:                                               ; preds = %61, %55
  %66 = load i32, i32* @me_mfont_h, align 4
  %67 = mul nsw i32 2, %66
  %68 = load i32, i32* %19, align 4
  %69 = add nsw i32 %68, %67
  store i32 %69, i32* %19, align 4
  %70 = load i32, i32* %18, align 4
  %71 = load i32, i32* @me_mfont_w, align 4
  %72 = mul nsw i32 %71, 2
  %73 = sub nsw i32 %70, %72
  %74 = load i32, i32* %19, align 4
  %75 = load i32, i32* %11, align 4
  %76 = load i32, i32* @me_mfont_h, align 4
  %77 = mul nsw i32 %75, %76
  %78 = add nsw i32 %74, %77
  %79 = load i32, i32* %20, align 4
  %80 = load i32, i32* @me_mfont_w, align 4
  %81 = mul nsw i32 2, %80
  %82 = add nsw i32 %79, %81
  %83 = call i32 @menu_draw_selection(i32 %73, i32 %78, i32 %82)
  store i32 0, i32* %21, align 4
  br label %84

84:                                               ; preds = %107, %65
  %85 = load i32, i32* %21, align 4
  %86 = load i32, i32* %9, align 4
  %87 = icmp slt i32 %85, %86
  br i1 %87, label %88, label %113

88:                                               ; preds = %84
  %89 = load i32, i32* %18, align 4
  %90 = load i32, i32* %19, align 4
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %92 = load i32, i32* %21, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* %10, align 4
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %99 = load i32, i32* %21, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* %12, align 4
  %105 = call i32 @action_binds(i32 %97, i32 %103, i32 %104)
  %106 = call i32 (i32, i32, i8*, ...) @text_out16(i32 %89, i32 %90, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %96, i32 %105)
  br label %107

107:                                              ; preds = %88
  %108 = load i32, i32* %21, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %21, align 4
  %110 = load i32, i32* @me_mfont_h, align 4
  %111 = load i32, i32* %19, align 4
  %112 = add nsw i32 %111, %110
  store i32 %112, i32* %19, align 4
  br label %84

113:                                              ; preds = %84
  %114 = call i32 (...) @menu_separation()
  %115 = load i32, i32* %12, align 4
  %116 = icmp slt i32 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %113
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8** %17, align 8
  br label %121

118:                                              ; preds = %113
  %119 = load i32, i32* %12, align 4
  %120 = call i8* @in_get_dev_name(i32 %119, i32 0, i32 1)
  store i8* %120, i8** %17, align 8
  br label %121

121:                                              ; preds = %118, %117
  %122 = load i8*, i8** %17, align 8
  %123 = call i32 @strlen(i8* %122)
  %124 = load i32, i32* @me_mfont_w, align 4
  %125 = mul nsw i32 %123, %124
  store i32 %125, i32* %20, align 4
  %126 = load i32, i32* %20, align 4
  %127 = load i32, i32* @me_mfont_w, align 4
  %128 = mul nsw i32 30, %127
  %129 = icmp slt i32 %126, %128
  br i1 %129, label %130, label %133

130:                                              ; preds = %121
  %131 = load i32, i32* @me_mfont_w, align 4
  %132 = mul nsw i32 30, %131
  store i32 %132, i32* %20, align 4
  br label %133

133:                                              ; preds = %130, %121
  %134 = load i32, i32* %20, align 4
  %135 = load i32, i32* @g_menuscreen_w, align 4
  %136 = icmp sgt i32 %134, %135
  br i1 %136, label %137, label %139

137:                                              ; preds = %133
  %138 = load i32, i32* @g_menuscreen_w, align 4
  store i32 %138, i32* %20, align 4
  br label %139

139:                                              ; preds = %137, %133
  %140 = load i32, i32* @g_menuscreen_w, align 4
  %141 = sdiv i32 %140, 2
  %142 = load i32, i32* %20, align 4
  %143 = sdiv i32 %142, 2
  %144 = sub nsw i32 %141, %143
  store i32 %144, i32* %18, align 4
  %145 = load i32, i32* %14, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %166, label %147

147:                                              ; preds = %139
  %148 = getelementptr inbounds [32 x i8], [32 x i8]* %16, i64 0, i64 0
  %149 = load i32, i32* @PBTN_MOK, align 4
  %150 = sub nsw i32 0, %149
  %151 = call i8* @in_get_key_name(i32 -1, i32 %150)
  %152 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %148, i32 32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* %151)
  %153 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i64 0, i64 0
  %154 = getelementptr inbounds [32 x i8], [32 x i8]* %16, i64 0, i64 0
  %155 = load i32, i32* @PBTN_MA2, align 4
  %156 = sub nsw i32 0, %155
  %157 = call i8* @in_get_key_name(i32 -1, i32 %156)
  %158 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %153, i32 64, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i8* %154, i8* %157)
  %159 = load i32, i32* %18, align 4
  %160 = load i32, i32* @g_menuscreen_h, align 4
  %161 = load i32, i32* @me_mfont_h, align 4
  %162 = mul nsw i32 4, %161
  %163 = sub nsw i32 %160, %162
  %164 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i64 0, i64 0
  %165 = call i32 (i32, i32, i8*, ...) @text_out16(i32 %159, i32 %163, i8* %164)
  br label %173

166:                                              ; preds = %139
  %167 = load i32, i32* %18, align 4
  %168 = load i32, i32* @g_menuscreen_h, align 4
  %169 = load i32, i32* @me_mfont_h, align 4
  %170 = mul nsw i32 4, %169
  %171 = sub nsw i32 %168, %170
  %172 = call i32 (i32, i32, i8*, ...) @text_out16(i32 %167, i32 %171, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0))
  br label %173

173:                                              ; preds = %166, %147
  %174 = load i32, i32* %13, align 4
  %175 = icmp sgt i32 %174, 1
  br i1 %175, label %176, label %190

176:                                              ; preds = %173
  %177 = load i32, i32* %18, align 4
  %178 = load i32, i32* @g_menuscreen_h, align 4
  %179 = load i32, i32* @me_mfont_h, align 4
  %180 = mul nsw i32 3, %179
  %181 = sub nsw i32 %178, %180
  %182 = load i8*, i8** %17, align 8
  %183 = call i32 (i32, i32, i8*, ...) @text_out16(i32 %177, i32 %181, i8* %182)
  %184 = load i32, i32* %18, align 4
  %185 = load i32, i32* @g_menuscreen_h, align 4
  %186 = load i32, i32* @me_mfont_h, align 4
  %187 = mul nsw i32 2, %186
  %188 = sub nsw i32 %185, %187
  %189 = call i32 (i32, i32, i8*, ...) @text_out16(i32 %184, i32 %188, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0))
  br label %190

190:                                              ; preds = %176, %173
  %191 = call i32 (...) @menu_draw_end()
  ret void
}

declare dso_local i32 @menu_draw_begin(i32, i32) #1

declare dso_local i32 @text_out16(i32, i32, i8*, ...) #1

declare dso_local i32 @menu_draw_selection(i32, i32, i32) #1

declare dso_local i32 @action_binds(i32, i32, i32) #1

declare dso_local i32 @menu_separation(...) #1

declare dso_local i8* @in_get_dev_name(i32, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, ...) #1

declare dso_local i8* @in_get_key_name(i32, i32) #1

declare dso_local i32 @menu_draw_end(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
