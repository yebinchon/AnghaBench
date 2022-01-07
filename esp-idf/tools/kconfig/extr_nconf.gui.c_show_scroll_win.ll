; ModuleID = '/home/carl/AnghaBench/esp-idf/tools/kconfig/extr_nconf.gui.c_show_scroll_win.c'
source_filename = "/home/carl/AnghaBench/esp-idf/tools/kconfig/extr_nconf.gui.c_show_scroll_win.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stdscr = common dso_local global i32 0, align 4
@attributes = common dso_local global i32* null, align 8
@SCROLLWIN_TEXT = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@SCROLLWIN_BOX = common dso_local global i64 0, align 8
@SCROLLWIN_HEADING = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c" %s \00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"<OK>\00", align 1
@DIALOG_MENU_FORE = common dso_local global i64 0, align 8
@F_HELP = common dso_local global i32 0, align 4
@F_BACK = common dso_local global i32 0, align 4
@F_EXIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @show_scroll_win(i32* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = call i32 @get_line_no(i8* %26)
  store i32 %27, i32* %8, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  %28 = load i32, i32* @stdscr, align 4
  %29 = load i32, i32* %11, align 4
  %30 = load i32, i32* %12, align 4
  %31 = call i32 @getmaxyx(i32 %28, i32 %29, i32 %30)
  %32 = load i8*, i8** %6, align 8
  %33 = call i32 @get_line_no(i8* %32)
  store i32 %33, i32* %8, align 4
  store i32 0, i32* %20, align 4
  br label %34

34:                                               ; preds = %48, %3
  %35 = load i32, i32* %20, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %51

38:                                               ; preds = %34
  %39 = load i8*, i8** %6, align 8
  %40 = load i32, i32* %20, align 4
  %41 = call i8* @get_line(i8* %39, i32 %40)
  store i8* %41, i8** %24, align 8
  %42 = load i8*, i8** %24, align 8
  %43 = call i32 @get_line_length(i8* %42)
  store i32 %43, i32* %25, align 4
  %44 = load i32, i32* %17, align 4
  %45 = load i32, i32* %25, align 4
  %46 = add nsw i32 %45, 2
  %47 = call i32 @max(i32 %44, i32 %46)
  store i32 %47, i32* %17, align 4
  br label %48

48:                                               ; preds = %38
  %49 = load i32, i32* %20, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %20, align 4
  br label %34

51:                                               ; preds = %34
  %52 = load i32, i32* %8, align 4
  %53 = add nsw i32 %52, 10
  %54 = load i32, i32* %17, align 4
  %55 = add nsw i32 %54, 10
  %56 = call i32* @newpad(i32 %53, i32 %55)
  store i32* %56, i32** %22, align 8
  %57 = load i32*, i32** %22, align 8
  %58 = load i32*, i32** @attributes, align 8
  %59 = load i64, i64* @SCROLLWIN_TEXT, align 8
  %60 = getelementptr inbounds i32, i32* %58, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @wattrset(i32* %57, i32 %61)
  %63 = load i32*, i32** %22, align 8
  %64 = load i8*, i8** %6, align 8
  %65 = call i32 @fill_window(i32* %63, i8* %64)
  %66 = load i32, i32* %8, align 4
  %67 = add nsw i32 %66, 4
  %68 = load i32, i32* %11, align 4
  %69 = sub nsw i32 %68, 2
  %70 = call i32 @min(i32 %67, i32 %69)
  store i32 %70, i32* %19, align 4
  %71 = load i32, i32* %17, align 4
  %72 = add nsw i32 %71, 2
  %73 = load i32, i32* %12, align 4
  %74 = sub nsw i32 %73, 2
  %75 = call i32 @min(i32 %72, i32 %74)
  store i32 %75, i32* %18, align 4
  %76 = load i32, i32* %19, align 4
  %77 = sub nsw i32 %76, 4
  %78 = call i32 @max(i32 %77, i32 0)
  store i32 %78, i32* %15, align 4
  %79 = load i32, i32* %18, align 4
  %80 = sub nsw i32 %79, 2
  %81 = call i32 @max(i32 %80, i32 0)
  store i32 %81, i32* %16, align 4
  %82 = load i32, i32* %11, align 4
  %83 = load i32, i32* %19, align 4
  %84 = sub nsw i32 %82, %83
  %85 = sdiv i32 %84, 2
  store i32 %85, i32* %10, align 4
  %86 = load i32, i32* %12, align 4
  %87 = load i32, i32* %18, align 4
  %88 = sub nsw i32 %86, %87
  %89 = sdiv i32 %88, 2
  store i32 %89, i32* %9, align 4
  %90 = load i32, i32* %19, align 4
  %91 = load i32, i32* %18, align 4
  %92 = load i32, i32* %10, align 4
  %93 = load i32, i32* %9, align 4
  %94 = call i32* @newwin(i32 %90, i32 %91, i32 %92, i32 %93)
  store i32* %94, i32** %21, align 8
  %95 = load i32*, i32** %21, align 8
  %96 = load i32, i32* @TRUE, align 4
  %97 = call i32 @keypad(i32* %95, i32 %96)
  %98 = load i32*, i32** %21, align 8
  %99 = load i32*, i32** @attributes, align 8
  %100 = load i64, i64* @SCROLLWIN_BOX, align 8
  %101 = getelementptr inbounds i32, i32* %99, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @wattrset(i32* %98, i32 %102)
  %104 = load i32*, i32** %21, align 8
  %105 = call i32 @box(i32* %104, i32 0, i32 0)
  %106 = load i32*, i32** %21, align 8
  %107 = load i32*, i32** @attributes, align 8
  %108 = load i64, i64* @SCROLLWIN_HEADING, align 8
  %109 = getelementptr inbounds i32, i32* %107, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @wattrset(i32* %106, i32 %110)
  %112 = load i32*, i32** %21, align 8
  %113 = load i8*, i8** %5, align 8
  %114 = call i32 @mvwprintw(i32* %112, i32 0, i32 3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %113)
  %115 = load i32*, i32** %21, align 8
  %116 = call i32* @new_panel(i32* %115)
  store i32* %116, i32** %23, align 8
  br label %117

117:                                              ; preds = %220, %51
  %118 = load i32*, i32** %22, align 8
  %119 = load i32*, i32** %21, align 8
  %120 = load i32, i32* %14, align 4
  %121 = load i32, i32* %13, align 4
  %122 = load i32, i32* %15, align 4
  %123 = load i32, i32* %16, align 4
  %124 = call i32 @copywin(i32* %118, i32* %119, i32 %120, i32 %121, i32 2, i32 2, i32 %122, i32 %123, i32 0)
  %125 = load i32*, i32** %21, align 8
  %126 = load i32, i32* %15, align 4
  %127 = add nsw i32 %126, 2
  %128 = load i32, i32* %16, align 4
  %129 = load i32*, i32** @attributes, align 8
  %130 = load i64, i64* @DIALOG_MENU_FORE, align 8
  %131 = getelementptr inbounds i32, i32* %129, i64 %130
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @print_in_middle(i32* %125, i32 %127, i32 0, i32 %128, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %132)
  %134 = load i32*, i32** %21, align 8
  %135 = call i32 @wrefresh(i32* %134)
  %136 = load i32*, i32** %21, align 8
  %137 = call i32 @wgetch(i32* %136)
  store i32 %137, i32* %7, align 4
  %138 = load i32, i32* %7, align 4
  switch i32 %138, label %166 [
    i32 131, label %139
    i32 32, label %139
    i32 100, label %139
    i32 130, label %144
    i32 117, label %144
    i32 133, label %149
    i32 134, label %150
    i32 135, label %154
    i32 106, label %154
    i32 128, label %157
    i32 107, label %157
    i32 132, label %160
    i32 104, label %160
    i32 129, label %163
    i32 108, label %163
  ]

139:                                              ; preds = %117, %117, %117
  %140 = load i32, i32* %15, align 4
  %141 = sub nsw i32 %140, 2
  %142 = load i32, i32* %14, align 4
  %143 = add nsw i32 %142, %141
  store i32 %143, i32* %14, align 4
  br label %166

144:                                              ; preds = %117, %117
  %145 = load i32, i32* %15, align 4
  %146 = add nsw i32 %145, 2
  %147 = load i32, i32* %14, align 4
  %148 = sub nsw i32 %147, %146
  store i32 %148, i32* %14, align 4
  br label %166

149:                                              ; preds = %117
  store i32 0, i32* %14, align 4
  br label %166

150:                                              ; preds = %117
  %151 = load i32, i32* %8, align 4
  %152 = load i32, i32* %15, align 4
  %153 = sub nsw i32 %151, %152
  store i32 %153, i32* %14, align 4
  br label %166

154:                                              ; preds = %117, %117
  %155 = load i32, i32* %14, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %14, align 4
  br label %166

157:                                              ; preds = %117, %117
  %158 = load i32, i32* %14, align 4
  %159 = add nsw i32 %158, -1
  store i32 %159, i32* %14, align 4
  br label %166

160:                                              ; preds = %117, %117
  %161 = load i32, i32* %13, align 4
  %162 = add nsw i32 %161, -1
  store i32 %162, i32* %13, align 4
  br label %166

163:                                              ; preds = %117, %117
  %164 = load i32, i32* %13, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %13, align 4
  br label %166

166:                                              ; preds = %117, %163, %160, %157, %154, %150, %149, %144, %139
  %167 = load i32, i32* %7, align 4
  %168 = icmp eq i32 %167, 10
  br i1 %168, label %190, label %169

169:                                              ; preds = %166
  %170 = load i32, i32* %7, align 4
  %171 = icmp eq i32 %170, 27
  br i1 %171, label %190, label %172

172:                                              ; preds = %169
  %173 = load i32, i32* %7, align 4
  %174 = icmp eq i32 %173, 113
  br i1 %174, label %190, label %175

175:                                              ; preds = %172
  %176 = load i32, i32* %7, align 4
  %177 = load i32, i32* @F_HELP, align 4
  %178 = call i32 @KEY_F(i32 %177)
  %179 = icmp eq i32 %176, %178
  br i1 %179, label %190, label %180

180:                                              ; preds = %175
  %181 = load i32, i32* %7, align 4
  %182 = load i32, i32* @F_BACK, align 4
  %183 = call i32 @KEY_F(i32 %182)
  %184 = icmp eq i32 %181, %183
  br i1 %184, label %190, label %185

185:                                              ; preds = %180
  %186 = load i32, i32* %7, align 4
  %187 = load i32, i32* @F_EXIT, align 4
  %188 = call i32 @KEY_F(i32 %187)
  %189 = icmp eq i32 %186, %188
  br i1 %189, label %190, label %191

190:                                              ; preds = %185, %180, %175, %172, %169, %166
  br label %223

191:                                              ; preds = %185
  %192 = load i32, i32* %14, align 4
  %193 = icmp slt i32 %192, 0
  br i1 %193, label %194, label %195

194:                                              ; preds = %191
  store i32 0, i32* %14, align 4
  br label %195

195:                                              ; preds = %194, %191
  %196 = load i32, i32* %14, align 4
  %197 = load i32, i32* %8, align 4
  %198 = load i32, i32* %15, align 4
  %199 = sub nsw i32 %197, %198
  %200 = icmp sge i32 %196, %199
  br i1 %200, label %201, label %205

201:                                              ; preds = %195
  %202 = load i32, i32* %8, align 4
  %203 = load i32, i32* %15, align 4
  %204 = sub nsw i32 %202, %203
  store i32 %204, i32* %14, align 4
  br label %205

205:                                              ; preds = %201, %195
  %206 = load i32, i32* %13, align 4
  %207 = icmp slt i32 %206, 0
  br i1 %207, label %208, label %209

208:                                              ; preds = %205
  store i32 0, i32* %13, align 4
  br label %209

209:                                              ; preds = %208, %205
  %210 = load i32, i32* %13, align 4
  %211 = load i32, i32* %17, align 4
  %212 = load i32, i32* %16, align 4
  %213 = sub nsw i32 %211, %212
  %214 = icmp sge i32 %210, %213
  br i1 %214, label %215, label %219

215:                                              ; preds = %209
  %216 = load i32, i32* %17, align 4
  %217 = load i32, i32* %16, align 4
  %218 = sub nsw i32 %216, %217
  store i32 %218, i32* %13, align 4
  br label %219

219:                                              ; preds = %215, %209
  br label %220

220:                                              ; preds = %219
  %221 = load i32, i32* %7, align 4
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %117, label %223

223:                                              ; preds = %220, %190
  %224 = load i32*, i32** %23, align 8
  %225 = call i32 @del_panel(i32* %224)
  %226 = load i32*, i32** %21, align 8
  %227 = call i32 @delwin(i32* %226)
  %228 = load i32*, i32** %4, align 8
  %229 = call i32 @refresh_all_windows(i32* %228)
  ret void
}

declare dso_local i32 @get_line_no(i8*) #1

declare dso_local i32 @getmaxyx(i32, i32, i32) #1

declare dso_local i8* @get_line(i8*, i32) #1

declare dso_local i32 @get_line_length(i8*) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32* @newpad(i32, i32) #1

declare dso_local i32 @wattrset(i32*, i32) #1

declare dso_local i32 @fill_window(i32*, i8*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32* @newwin(i32, i32, i32, i32) #1

declare dso_local i32 @keypad(i32*, i32) #1

declare dso_local i32 @box(i32*, i32, i32) #1

declare dso_local i32 @mvwprintw(i32*, i32, i32, i8*, i8*) #1

declare dso_local i32* @new_panel(i32*) #1

declare dso_local i32 @copywin(i32*, i32*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @print_in_middle(i32*, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @wrefresh(i32*) #1

declare dso_local i32 @wgetch(i32*) #1

declare dso_local i32 @KEY_F(i32) #1

declare dso_local i32 @del_panel(i32*) #1

declare dso_local i32 @delwin(i32*) #1

declare dso_local i32 @refresh_all_windows(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
