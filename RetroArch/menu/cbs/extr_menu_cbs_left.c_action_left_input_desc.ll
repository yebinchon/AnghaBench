; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/cbs/extr_menu_cbs_left.c_action_left_input_desc.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/cbs/extr_menu_cbs_left.c_action_left_input_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32** }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32** }

@MENU_SETTINGS_INPUT_DESC_BEGIN = common dso_local global i32 0, align 4
@RARCH_FIRST_CUSTOM_BIND = common dso_local global i32 0, align 4
@RARCH_UNMAPPED = common dso_local global i32 0, align 4
@RARCH_CUSTOM_BIND_LIST_END = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32)* @action_left_input_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @action_left_input_desc(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = call %struct.TYPE_8__* (...) @runloop_get_system_info()
  store %struct.TYPE_8__* %13, %struct.TYPE_8__** %8, align 8
  %14 = call %struct.TYPE_7__* (...) @config_get_ptr()
  store %struct.TYPE_7__* %14, %struct.TYPE_7__** %9, align 8
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %16 = icmp ne %struct.TYPE_7__* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %19 = icmp ne %struct.TYPE_8__* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %17, %3
  store i32 0, i32* %4, align 4
  br label %175

21:                                               ; preds = %17
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @MENU_SETTINGS_INPUT_DESC_BEGIN, align 4
  %24 = sub i32 %22, %23
  %25 = load i32, i32* @RARCH_FIRST_CUSTOM_BIND, align 4
  %26 = add nsw i32 %25, 8
  %27 = udiv i32 %24, %26
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @MENU_SETTINGS_INPUT_DESC_BEGIN, align 4
  %30 = sub i32 %28, %29
  %31 = load i32, i32* @RARCH_FIRST_CUSTOM_BIND, align 4
  %32 = add nsw i32 %31, 8
  %33 = load i32, i32* %11, align 4
  %34 = mul i32 %32, %33
  %35 = sub i32 %30, %34
  store i32 %35, i32* %10, align 4
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i32**, i32*** %38, align 8
  %40 = load i32, i32* %11, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds i32*, i32** %39, i64 %41
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %10, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @RARCH_UNMAPPED, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %64

50:                                               ; preds = %21
  %51 = load i32, i32* @RARCH_CUSTOM_BIND_LIST_END, align 4
  %52 = sub nsw i32 %51, 1
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i32**, i32*** %55, align 8
  %57 = load i32, i32* %11, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds i32*, i32** %56, i64 %58
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %10, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  store i32 %52, i32* %63, align 4
  br label %64

64:                                               ; preds = %50, %21
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load i32**, i32*** %67, align 8
  %69 = load i32, i32* %11, align 4
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds i32*, i32** %68, i64 %70
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %10, align 4
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = icmp ugt i32 %76, 0
  br i1 %77, label %78, label %92

78:                                               ; preds = %64
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = load i32**, i32*** %81, align 8
  %83 = load i32, i32* %11, align 4
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds i32*, i32** %82, i64 %84
  %86 = load i32*, i32** %85, align 8
  %87 = load i32, i32* %10, align 4
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = add i32 %90, -1
  store i32 %91, i32* %89, align 4
  br label %134

92:                                               ; preds = %64
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  %96 = load i32**, i32*** %95, align 8
  %97 = load i32, i32* %11, align 4
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds i32*, i32** %96, i64 %98
  %100 = load i32*, i32** %99, align 8
  %101 = load i32, i32* %10, align 4
  %102 = zext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %119

106:                                              ; preds = %92
  %107 = load i32, i32* @RARCH_UNMAPPED, align 4
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 0
  %111 = load i32**, i32*** %110, align 8
  %112 = load i32, i32* %11, align 4
  %113 = zext i32 %112 to i64
  %114 = getelementptr inbounds i32*, i32** %111, i64 %113
  %115 = load i32*, i32** %114, align 8
  %116 = load i32, i32* %10, align 4
  %117 = zext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %115, i64 %117
  store i32 %107, i32* %118, align 4
  br label %133

119:                                              ; preds = %92
  %120 = load i32, i32* @RARCH_CUSTOM_BIND_LIST_END, align 4
  %121 = sub nsw i32 %120, 1
  %122 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 0
  %125 = load i32**, i32*** %124, align 8
  %126 = load i32, i32* %11, align 4
  %127 = zext i32 %126 to i64
  %128 = getelementptr inbounds i32*, i32** %125, i64 %127
  %129 = load i32*, i32** %128, align 8
  %130 = load i32, i32* %10, align 4
  %131 = zext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %129, i64 %131
  store i32 %121, i32* %132, align 4
  br label %133

133:                                              ; preds = %119, %106
  br label %134

134:                                              ; preds = %133, %78
  %135 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 0
  %138 = load i32**, i32*** %137, align 8
  %139 = load i32, i32* %11, align 4
  %140 = zext i32 %139 to i64
  %141 = getelementptr inbounds i32*, i32** %138, i64 %140
  %142 = load i32*, i32** %141, align 8
  %143 = load i32, i32* %10, align 4
  %144 = zext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %142, i64 %144
  %146 = load i32, i32* %145, align 4
  store i32 %146, i32* %12, align 4
  %147 = load i32, i32* %12, align 4
  %148 = load i32, i32* @RARCH_UNMAPPED, align 4
  %149 = icmp ne i32 %147, %148
  br i1 %149, label %150, label %174

150:                                              ; preds = %134
  %151 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %151, i32 0, i32 0
  %153 = load i32**, i32*** %152, align 8
  %154 = load i32, i32* %11, align 4
  %155 = zext i32 %154 to i64
  %156 = getelementptr inbounds i32*, i32** %153, i64 %155
  %157 = load i32*, i32** %156, align 8
  %158 = load i32, i32* %12, align 4
  %159 = zext i32 %158 to i64
  %160 = getelementptr inbounds i32, i32* %157, i64 %159
  %161 = load i32, i32* %160, align 4
  %162 = call i64 @string_is_empty(i32 %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %173

164:                                              ; preds = %150
  %165 = load i32, i32* %12, align 4
  %166 = load i32, i32* @RARCH_CUSTOM_BIND_LIST_END, align 4
  %167 = icmp ult i32 %165, %166
  br i1 %167, label %168, label %173

168:                                              ; preds = %164
  %169 = load i32, i32* %5, align 4
  %170 = load i8*, i8** %6, align 8
  %171 = load i32, i32* %7, align 4
  %172 = call i32 @action_left_input_desc(i32 %169, i8* %170, i32 %171)
  br label %173

173:                                              ; preds = %168, %164, %150
  br label %174

174:                                              ; preds = %173, %134
  store i32 0, i32* %4, align 4
  br label %175

175:                                              ; preds = %174, %20
  %176 = load i32, i32* %4, align 4
  ret i32 %176
}

declare dso_local %struct.TYPE_8__* @runloop_get_system_info(...) #1

declare dso_local %struct.TYPE_7__* @config_get_ptr(...) #1

declare dso_local i64 @string_is_empty(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
