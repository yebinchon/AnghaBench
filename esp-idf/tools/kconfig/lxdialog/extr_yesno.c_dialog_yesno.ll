; ModuleID = '/home/carl/AnghaBench/esp-idf/tools/kconfig/lxdialog/extr_yesno.c_dialog_yesno.c'
source_filename = "/home/carl/AnghaBench/esp-idf/tools/kconfig/lxdialog/extr_yesno.c_dialog_yesno.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@stdscr = common dso_local global i32 0, align 4
@YESNO_HEIGTH_MIN = common dso_local global i32 0, align 4
@ERRDISPLAYTOOSMALL = common dso_local global i32 0, align 4
@YESNO_WIDTH_MIN = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@dlg = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@ACS_LTEE = common dso_local global i32 0, align 4
@ACS_HLINE = common dso_local global i32 0, align 4
@ACS_RTEE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dialog_yesno(i8* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %16

16:                                               ; preds = %160, %4
  %17 = load i32, i32* @stdscr, align 4
  %18 = call i32 @getmaxy(i32 %17)
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* @YESNO_HEIGTH_MIN, align 4
  %21 = add nsw i32 %19, %20
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %16
  %24 = load i32, i32* @ERRDISPLAYTOOSMALL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %5, align 4
  br label %169

26:                                               ; preds = %16
  %27 = load i32, i32* @stdscr, align 4
  %28 = call i32 @getmaxx(i32 %27)
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* @YESNO_WIDTH_MIN, align 4
  %31 = add nsw i32 %29, %30
  %32 = icmp slt i32 %28, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %26
  %34 = load i32, i32* @ERRDISPLAYTOOSMALL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %5, align 4
  br label %169

36:                                               ; preds = %26
  %37 = load i32, i32* @stdscr, align 4
  %38 = call i32 @getmaxx(i32 %37)
  %39 = load i32, i32* %9, align 4
  %40 = sub nsw i32 %38, %39
  %41 = sdiv i32 %40, 2
  store i32 %41, i32* %11, align 4
  %42 = load i32, i32* @stdscr, align 4
  %43 = call i32 @getmaxy(i32 %42)
  %44 = load i32, i32* %8, align 4
  %45 = sub nsw i32 %43, %44
  %46 = sdiv i32 %45, 2
  store i32 %46, i32* %12, align 4
  %47 = load i32, i32* @stdscr, align 4
  %48 = load i32, i32* %12, align 4
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* %9, align 4
  %52 = call i32 @draw_shadow(i32 %47, i32 %48, i32 %49, i32 %50, i32 %51)
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* %12, align 4
  %56 = load i32, i32* %11, align 4
  %57 = call i32* @newwin(i32 %53, i32 %54, i32 %55, i32 %56)
  store i32* %57, i32** %15, align 8
  %58 = load i32*, i32** %15, align 8
  %59 = load i32, i32* @TRUE, align 4
  %60 = call i32 @keypad(i32* %58, i32 %59)
  %61 = load i32*, i32** %15, align 8
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @dlg, i32 0, i32 0, i32 0), align 4
  %65 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @dlg, i32 0, i32 1, i32 0), align 4
  %66 = call i32 @draw_box(i32* %61, i32 0, i32 0, i32 %62, i32 %63, i32 %64, i32 %65)
  %67 = load i32*, i32** %15, align 8
  %68 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @dlg, i32 0, i32 1, i32 0), align 4
  %69 = call i32 @wattrset(i32* %67, i32 %68)
  %70 = load i32*, i32** %15, align 8
  %71 = load i32, i32* %8, align 4
  %72 = sub nsw i32 %71, 3
  %73 = load i32, i32* @ACS_LTEE, align 4
  %74 = call i32 @mvwaddch(i32* %70, i32 %72, i32 0, i32 %73)
  store i32 0, i32* %10, align 4
  br label %75

75:                                               ; preds = %84, %36
  %76 = load i32, i32* %10, align 4
  %77 = load i32, i32* %9, align 4
  %78 = sub nsw i32 %77, 2
  %79 = icmp slt i32 %76, %78
  br i1 %79, label %80, label %87

80:                                               ; preds = %75
  %81 = load i32*, i32** %15, align 8
  %82 = load i32, i32* @ACS_HLINE, align 4
  %83 = call i32 @waddch(i32* %81, i32 %82)
  br label %84

84:                                               ; preds = %80
  %85 = load i32, i32* %10, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %10, align 4
  br label %75

87:                                               ; preds = %75
  %88 = load i32*, i32** %15, align 8
  %89 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @dlg, i32 0, i32 0, i32 0), align 4
  %90 = call i32 @wattrset(i32* %88, i32 %89)
  %91 = load i32*, i32** %15, align 8
  %92 = load i32, i32* @ACS_RTEE, align 4
  %93 = call i32 @waddch(i32* %91, i32 %92)
  %94 = load i32*, i32** %15, align 8
  %95 = load i8*, i8** %6, align 8
  %96 = load i32, i32* %9, align 4
  %97 = call i32 @print_title(i32* %94, i8* %95, i32 %96)
  %98 = load i32*, i32** %15, align 8
  %99 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @dlg, i32 0, i32 0, i32 0), align 4
  %100 = call i32 @wattrset(i32* %98, i32 %99)
  %101 = load i32*, i32** %15, align 8
  %102 = load i8*, i8** %7, align 8
  %103 = load i32, i32* %9, align 4
  %104 = sub nsw i32 %103, 2
  %105 = call i32 @print_autowrap(i32* %101, i8* %102, i32 %104, i32 1, i32 3)
  %106 = load i32*, i32** %15, align 8
  %107 = load i32, i32* %8, align 4
  %108 = load i32, i32* %9, align 4
  %109 = call i32 @print_buttons(i32* %106, i32 %107, i32 %108, i32 0)
  br label %110

110:                                              ; preds = %164, %87
  %111 = load i32, i32* %13, align 4
  %112 = icmp ne i32 %111, 132
  br i1 %112, label %113, label %165

113:                                              ; preds = %110
  %114 = load i32*, i32** %15, align 8
  %115 = call i32 @wgetch(i32* %114)
  store i32 %115, i32* %13, align 4
  %116 = load i32, i32* %13, align 4
  switch i32 %116, label %164 [
    i32 89, label %117
    i32 121, label %117
    i32 78, label %120
    i32 110, label %120
    i32 128, label %123
    i32 131, label %123
    i32 129, label %123
    i32 32, label %153
    i32 10, label %153
    i32 132, label %157
    i32 130, label %160
  ]

117:                                              ; preds = %113, %113
  %118 = load i32*, i32** %15, align 8
  %119 = call i32 @delwin(i32* %118)
  store i32 0, i32* %5, align 4
  br label %169

120:                                              ; preds = %113, %113
  %121 = load i32*, i32** %15, align 8
  %122 = call i32 @delwin(i32* %121)
  store i32 1, i32* %5, align 4
  br label %169

123:                                              ; preds = %113, %113, %113
  %124 = load i32, i32* %13, align 4
  %125 = icmp eq i32 %124, 131
  br i1 %125, label %126, label %129

126:                                              ; preds = %123
  %127 = load i32, i32* %14, align 4
  %128 = add nsw i32 %127, -1
  store i32 %128, i32* %14, align 4
  br label %132

129:                                              ; preds = %123
  %130 = load i32, i32* %14, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %14, align 4
  br label %132

132:                                              ; preds = %129, %126
  %133 = phi i32 [ %128, %126 ], [ %131, %129 ]
  %134 = icmp slt i32 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %132
  br label %144

136:                                              ; preds = %132
  %137 = load i32, i32* %14, align 4
  %138 = icmp sgt i32 %137, 1
  br i1 %138, label %139, label %140

139:                                              ; preds = %136
  br label %142

140:                                              ; preds = %136
  %141 = load i32, i32* %14, align 4
  br label %142

142:                                              ; preds = %140, %139
  %143 = phi i32 [ 0, %139 ], [ %141, %140 ]
  br label %144

144:                                              ; preds = %142, %135
  %145 = phi i32 [ 1, %135 ], [ %143, %142 ]
  store i32 %145, i32* %14, align 4
  %146 = load i32*, i32** %15, align 8
  %147 = load i32, i32* %8, align 4
  %148 = load i32, i32* %9, align 4
  %149 = load i32, i32* %14, align 4
  %150 = call i32 @print_buttons(i32* %146, i32 %147, i32 %148, i32 %149)
  %151 = load i32*, i32** %15, align 8
  %152 = call i32 @wrefresh(i32* %151)
  br label %164

153:                                              ; preds = %113, %113
  %154 = load i32*, i32** %15, align 8
  %155 = call i32 @delwin(i32* %154)
  %156 = load i32, i32* %14, align 4
  store i32 %156, i32* %5, align 4
  br label %169

157:                                              ; preds = %113
  %158 = load i32*, i32** %15, align 8
  %159 = call i32 @on_key_esc(i32* %158)
  store i32 %159, i32* %13, align 4
  br label %164

160:                                              ; preds = %113
  %161 = load i32*, i32** %15, align 8
  %162 = call i32 @delwin(i32* %161)
  %163 = call i32 (...) @on_key_resize()
  br label %16

164:                                              ; preds = %113, %157, %144
  br label %110

165:                                              ; preds = %110
  %166 = load i32*, i32** %15, align 8
  %167 = call i32 @delwin(i32* %166)
  %168 = load i32, i32* %13, align 4
  store i32 %168, i32* %5, align 4
  br label %169

169:                                              ; preds = %165, %153, %120, %117, %33, %23
  %170 = load i32, i32* %5, align 4
  ret i32 %170
}

declare dso_local i32 @getmaxy(i32) #1

declare dso_local i32 @getmaxx(i32) #1

declare dso_local i32 @draw_shadow(i32, i32, i32, i32, i32) #1

declare dso_local i32* @newwin(i32, i32, i32, i32) #1

declare dso_local i32 @keypad(i32*, i32) #1

declare dso_local i32 @draw_box(i32*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @wattrset(i32*, i32) #1

declare dso_local i32 @mvwaddch(i32*, i32, i32, i32) #1

declare dso_local i32 @waddch(i32*, i32) #1

declare dso_local i32 @print_title(i32*, i8*, i32) #1

declare dso_local i32 @print_autowrap(i32*, i8*, i32, i32, i32) #1

declare dso_local i32 @print_buttons(i32*, i32, i32, i32) #1

declare dso_local i32 @wgetch(i32*) #1

declare dso_local i32 @delwin(i32*) #1

declare dso_local i32 @wrefresh(i32*) #1

declare dso_local i32 @on_key_esc(i32*) #1

declare dso_local i32 @on_key_resize(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
