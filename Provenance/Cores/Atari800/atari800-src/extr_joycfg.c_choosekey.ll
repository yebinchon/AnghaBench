; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_joycfg.c_choosekey.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_joycfg.c_choosekey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [17 x i8] c"Press key for %s\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"(ESC=none)\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"Current setting: %s\00", align 1
@keynames = common dso_local global i8** null, align 8
@hi = common dso_local global i32 0, align 4
@lo = common dso_local global i32 0, align 4
@buffer = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @choosekey(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [80 x i8], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = call i32 (...) @clrscr()
  %10 = getelementptr inbounds [80 x i8], [80 x i8]* %5, i64 0, i64 0
  %11 = load i8*, i8** %3, align 8
  %12 = call i32 @sprintf(i8* %10, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* %11)
  %13 = getelementptr inbounds [80 x i8], [80 x i8]* %5, i64 0, i64 0
  %14 = call i32 @strlen(i8* %13)
  %15 = sub nsw i32 78, %14
  %16 = sdiv i32 %15, 2
  %17 = call i32 @gotoxy(i32 %16, i32 8)
  %18 = getelementptr inbounds [80 x i8], [80 x i8]* %5, i64 0, i64 0
  %19 = call i32 @cputs(i8* %18)
  %20 = call i32 @gotoxy(i32 34, i32 9)
  %21 = call i32 @cputs(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %22 = getelementptr inbounds [80 x i8], [80 x i8]* %5, i64 0, i64 0
  %23 = load i8**, i8*** @keynames, align 8
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8*, i8** %23, i64 %25
  %27 = load i8*, i8** %26, align 8
  %28 = call i32 @sprintf(i8* %22, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i8* %27)
  %29 = getelementptr inbounds [80 x i8], [80 x i8]* %5, i64 0, i64 0
  %30 = call i32 @strlen(i8* %29)
  %31 = sub nsw i32 78, %30
  %32 = sdiv i32 %31, 2
  %33 = call i32 @gotoxy(i32 %32, i32 11)
  %34 = getelementptr inbounds [80 x i8], [80 x i8]* %5, i64 0, i64 0
  %35 = call i32 @cputs(i8* %34)
  br label %36

36:                                               ; preds = %39, %2
  %37 = call i64 (...) @kbhit()
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %36
  br label %36

40:                                               ; preds = %36
  %41 = call i32 (...) @key_init()
  br label %42

42:                                               ; preds = %112, %40
  br label %43

43:                                               ; preds = %47, %42
  %44 = load i32, i32* @hi, align 4
  %45 = load i32, i32* @lo, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  br label %43

48:                                               ; preds = %43
  %49 = load i32*, i32** @buffer, align 8
  %50 = load i32, i32* @lo, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* @lo, align 4
  %52 = sext i32 %50 to i64
  %53 = getelementptr inbounds i32, i32* %49, i64 %52
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %6, align 4
  %55 = load i32, i32* @lo, align 4
  %56 = icmp eq i32 %55, 100
  br i1 %56, label %57, label %58

57:                                               ; preds = %48
  store i32 0, i32* @lo, align 4
  br label %58

58:                                               ; preds = %57, %48
  %59 = load i32, i32* %6, align 4
  %60 = icmp sge i32 %59, 59
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = load i32, i32* %6, align 4
  %63 = icmp sle i32 %62, 68
  br i1 %63, label %82, label %64

64:                                               ; preds = %61, %58
  %65 = load i32, i32* %6, align 4
  %66 = icmp eq i32 %65, 87
  br i1 %66, label %82, label %67

67:                                               ; preds = %64
  %68 = load i32, i32* %6, align 4
  %69 = icmp eq i32 %68, 88
  br i1 %69, label %82, label %70

70:                                               ; preds = %67
  %71 = load i32, i32* %6, align 4
  %72 = icmp eq i32 %71, 167
  br i1 %72, label %82, label %73

73:                                               ; preds = %70
  %74 = load i32, i32* %6, align 4
  %75 = icmp eq i32 %74, 183
  br i1 %75, label %82, label %76

76:                                               ; preds = %73
  %77 = load i32, i32* %6, align 4
  %78 = icmp eq i32 %77, 70
  br i1 %78, label %82, label %79

79:                                               ; preds = %76
  %80 = load i32, i32* %6, align 4
  %81 = icmp eq i32 %80, 197
  br label %82

82:                                               ; preds = %79, %76, %73, %70, %67, %64, %61
  %83 = phi i1 [ true, %76 ], [ true, %73 ], [ true, %70 ], [ true, %67 ], [ true, %64 ], [ true, %61 ], [ %81, %79 ]
  %84 = zext i1 %83 to i32
  store i32 %84, i32* %8, align 4
  br label %85

85:                                               ; preds = %82
  %86 = load i32, i32* %6, align 4
  %87 = and i32 %86, 65280
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %112, label %89

89:                                               ; preds = %85
  %90 = load i8**, i8*** @keynames, align 8
  %91 = load i32, i32* %6, align 4
  %92 = and i32 %91, 255
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i8*, i8** %90, i64 %93
  %95 = load i8*, i8** %94, align 8
  %96 = load i8, i8* %95, align 1
  %97 = sext i8 %96 to i32
  %98 = icmp eq i32 %97, 63
  br i1 %98, label %112, label %99

99:                                               ; preds = %89
  %100 = load i8**, i8*** @keynames, align 8
  %101 = load i32, i32* %6, align 4
  %102 = and i32 %101, 255
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i8*, i8** %100, i64 %103
  %105 = load i8*, i8** %104, align 8
  %106 = load i8, i8* %105, align 1
  %107 = sext i8 %106 to i32
  %108 = icmp eq i32 %107, 35
  br i1 %108, label %112, label %109

109:                                              ; preds = %99
  %110 = load i32, i32* %8, align 4
  %111 = icmp ne i32 %110, 0
  br label %112

112:                                              ; preds = %109, %99, %89, %85
  %113 = phi i1 [ true, %99 ], [ true, %89 ], [ true, %85 ], [ %111, %109 ]
  br i1 %113, label %42, label %114

114:                                              ; preds = %112
  %115 = load i32, i32* %6, align 4
  %116 = and i32 %115, 255
  store i32 %116, i32* %7, align 4
  %117 = load i32, i32* %7, align 4
  %118 = icmp eq i32 %117, 1
  br i1 %118, label %119, label %120

119:                                              ; preds = %114
  store i32 255, i32* %7, align 4
  br label %120

120:                                              ; preds = %119, %114
  %121 = getelementptr inbounds [80 x i8], [80 x i8]* %5, i64 0, i64 0
  %122 = load i8**, i8*** @keynames, align 8
  %123 = load i32, i32* %7, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i8*, i8** %122, i64 %124
  %126 = load i8*, i8** %125, align 8
  %127 = call i32 @sprintf(i8* %121, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i8* %126)
  %128 = call i32 @gotoxy(i32 1, i32 11)
  %129 = call i32 (...) @clreol()
  %130 = getelementptr inbounds [80 x i8], [80 x i8]* %5, i64 0, i64 0
  %131 = call i32 @strlen(i8* %130)
  %132 = sub nsw i32 78, %131
  %133 = sdiv i32 %132, 2
  %134 = call i32 @gotoxy(i32 %133, i32 11)
  %135 = getelementptr inbounds [80 x i8], [80 x i8]* %5, i64 0, i64 0
  %136 = call i32 @cputs(i8* %135)
  br label %137

137:                                              ; preds = %154, %120
  br label %138

138:                                              ; preds = %142, %137
  %139 = load i32, i32* @hi, align 4
  %140 = load i32, i32* @lo, align 4
  %141 = icmp eq i32 %139, %140
  br i1 %141, label %142, label %143

142:                                              ; preds = %138
  br label %138

143:                                              ; preds = %138
  %144 = load i32*, i32** @buffer, align 8
  %145 = load i32, i32* @lo, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* @lo, align 4
  %147 = sext i32 %145 to i64
  %148 = getelementptr inbounds i32, i32* %144, i64 %147
  %149 = load i32, i32* %148, align 4
  store i32 %149, i32* %6, align 4
  %150 = load i32, i32* @lo, align 4
  %151 = icmp eq i32 %150, 100
  br i1 %151, label %152, label %153

152:                                              ; preds = %143
  store i32 0, i32* @lo, align 4
  br label %153

153:                                              ; preds = %152, %143
  br label %154

154:                                              ; preds = %153
  %155 = load i32, i32* %6, align 4
  %156 = and i32 %155, 65280
  %157 = icmp ne i32 %156, 0
  %158 = xor i1 %157, true
  br i1 %158, label %137, label %159

159:                                              ; preds = %154
  %160 = call i32 (...) @key_done()
  %161 = load i32, i32* %7, align 4
  ret i32 %161
}

declare dso_local i32 @clrscr(...) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*) #1

declare dso_local i32 @gotoxy(i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @cputs(i8*) #1

declare dso_local i64 @kbhit(...) #1

declare dso_local i32 @key_init(...) #1

declare dso_local i32 @clreol(...) #1

declare dso_local i32 @key_done(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
