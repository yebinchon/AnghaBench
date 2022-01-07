; ModuleID = '/home/carl/AnghaBench/Atlas/lib/extr_lpeg.c_getpatt.c'
source_filename = "/home/carl/AnghaBench/Atlas/lib/extr_lpeg.c_getpatt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IChar = common dso_local global i32 0, align 4
@UCHAR_MAX = common dso_local global i32 0, align 4
@ITestAny = common dso_local global i32 0, align 4
@IFail = common dso_local global i32 0, align 4
@IChoice = common dso_local global i32 0, align 4
@IFailTwice = common dso_local global i32 0, align 4
@IOpenCapture = common dso_local global i32 0, align 4
@Cruntime = common dso_local global i32 0, align 4
@ICloseRunTime = common dso_local global i32 0, align 4
@Cclose = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32, i32*)* @getpatt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @getpatt(i32* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %13 = load i32*, i32** %4, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @lua_type(i32* %13, i32 %14)
  switch i32 %15, label %150 [
    i32 129, label %16
    i32 130, label %46
    i32 132, label %110
    i32 128, label %128
    i32 131, label %132
  ]

16:                                               ; preds = %3
  %17 = load i32*, i32** %4, align 8
  %18 = load i32, i32* %5, align 4
  %19 = call i8* @lua_tolstring(i32* %17, i32 %18, i64* %9)
  store i8* %19, i8** %10, align 8
  %20 = load i32*, i32** %4, align 8
  %21 = load i64, i64* %9, align 8
  %22 = trunc i64 %21 to i32
  %23 = call i32* @newpatt(i32* %20, i32 %22)
  store i32* %23, i32** %7, align 8
  store i64 0, i64* %8, align 8
  br label %24

24:                                               ; preds = %39, %16
  %25 = load i64, i64* %8, align 8
  %26 = load i64, i64* %9, align 8
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %28, label %42

28:                                               ; preds = %24
  %29 = load i32*, i32** %7, align 8
  %30 = load i64, i64* %8, align 8
  %31 = getelementptr inbounds i32, i32* %29, i64 %30
  %32 = load i32, i32* @IChar, align 4
  %33 = load i8*, i8** %10, align 8
  %34 = load i64, i64* %8, align 8
  %35 = getelementptr inbounds i8, i8* %33, i64 %34
  %36 = load i8, i8* %35, align 1
  %37 = zext i8 %36 to i32
  %38 = call i32 @setinstaux(i32* %31, i32 %32, i32 0, i32 %37)
  br label %39

39:                                               ; preds = %28
  %40 = load i64, i64* %8, align 8
  %41 = add i64 %40, 1
  store i64 %41, i64* %8, align 8
  br label %24

42:                                               ; preds = %24
  %43 = load i32*, i32** %4, align 8
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @lua_replace(i32* %43, i32 %44)
  br label %154

46:                                               ; preds = %3
  %47 = load i32*, i32** %4, align 8
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @lua_tointeger(i32* %47, i32 %48)
  store i32 %49, i32* %11, align 4
  %50 = load i32, i32* %11, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %46
  %53 = load i32*, i32** %4, align 8
  %54 = call i32* @newpatt(i32* %53, i32 0)
  store i32* %54, i32** %7, align 8
  br label %106

55:                                               ; preds = %46
  %56 = load i32, i32* %11, align 4
  %57 = icmp sgt i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %55
  %59 = load i32*, i32** %4, align 8
  %60 = load i32, i32* %11, align 4
  %61 = call i32* @any(i32* %59, i32 %60, i32 0, i32* null)
  store i32* %61, i32** %7, align 8
  br label %105

62:                                               ; preds = %55
  %63 = load i32, i32* %11, align 4
  %64 = sub nsw i32 0, %63
  %65 = load i32, i32* @UCHAR_MAX, align 4
  %66 = icmp sle i32 %64, %65
  br i1 %66, label %67, label %79

67:                                               ; preds = %62
  %68 = load i32*, i32** %4, align 8
  %69 = call i32* @newpatt(i32* %68, i32 2)
  store i32* %69, i32** %7, align 8
  %70 = load i32*, i32** %7, align 8
  %71 = load i32, i32* @ITestAny, align 4
  %72 = load i32, i32* %11, align 4
  %73 = sub nsw i32 0, %72
  %74 = call i32 @setinstaux(i32* %70, i32 %71, i32 2, i32 %73)
  %75 = load i32*, i32** %7, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 1
  %77 = load i32, i32* @IFail, align 4
  %78 = call i32 @setinst(i32* %76, i32 %77, i32 0)
  br label %104

79:                                               ; preds = %62
  store i32 2, i32* %12, align 4
  %80 = load i32*, i32** %4, align 8
  %81 = load i32, i32* %11, align 4
  %82 = sub nsw i32 0, %81
  %83 = load i32, i32* @UCHAR_MAX, align 4
  %84 = sub nsw i32 %82, %83
  %85 = call i32* @any(i32* %80, i32 %84, i32 3, i32* %12)
  store i32* %85, i32** %7, align 8
  %86 = load i32*, i32** %7, align 8
  %87 = load i32, i32* @ITestAny, align 4
  %88 = load i32, i32* %12, align 4
  %89 = add nsw i32 %88, 1
  %90 = load i32, i32* @UCHAR_MAX, align 4
  %91 = call i32 @setinstaux(i32* %86, i32 %87, i32 %89, i32 %90)
  %92 = load i32*, i32** %7, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 1
  %94 = load i32, i32* @IChoice, align 4
  %95 = load i32, i32* %12, align 4
  %96 = load i32, i32* @UCHAR_MAX, align 4
  %97 = call i32 @setinstaux(i32* %93, i32 %94, i32 %95, i32 %96)
  %98 = load i32*, i32** %7, align 8
  %99 = load i32, i32* %12, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  %102 = load i32, i32* @IFailTwice, align 4
  %103 = call i32 @setinst(i32* %101, i32 %102, i32 0)
  br label %104

104:                                              ; preds = %79, %67
  br label %105

105:                                              ; preds = %104, %58
  br label %106

106:                                              ; preds = %105, %52
  %107 = load i32*, i32** %4, align 8
  %108 = load i32, i32* %5, align 4
  %109 = call i32 @lua_replace(i32* %107, i32 %108)
  br label %154

110:                                              ; preds = %3
  %111 = load i32*, i32** %4, align 8
  %112 = load i32, i32* %5, align 4
  %113 = call i32 @lua_toboolean(i32* %111, i32 %112)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %110
  %116 = load i32*, i32** %4, align 8
  %117 = call i32* @newpatt(i32* %116, i32 0)
  store i32* %117, i32** %7, align 8
  br label %124

118:                                              ; preds = %110
  %119 = load i32*, i32** %4, align 8
  %120 = call i32* @newpatt(i32* %119, i32 1)
  store i32* %120, i32** %7, align 8
  %121 = load i32*, i32** %7, align 8
  %122 = load i32, i32* @IFail, align 4
  %123 = call i32 @setinst(i32* %121, i32 %122, i32 0)
  br label %124

124:                                              ; preds = %118, %115
  %125 = load i32*, i32** %4, align 8
  %126 = load i32, i32* %5, align 4
  %127 = call i32 @lua_replace(i32* %125, i32 %126)
  br label %154

128:                                              ; preds = %3
  %129 = load i32*, i32** %4, align 8
  %130 = load i32, i32* %5, align 4
  %131 = call i32* @fix_l(i32* %129, i32 %130)
  store i32* %131, i32** %7, align 8
  br label %154

132:                                              ; preds = %3
  %133 = load i32*, i32** %4, align 8
  %134 = call i32* @newpatt(i32* %133, i32 2)
  store i32* %134, i32** %7, align 8
  %135 = load i32*, i32** %7, align 8
  %136 = load i32, i32* @IOpenCapture, align 4
  %137 = load i32*, i32** %4, align 8
  %138 = load i32, i32* %5, align 4
  %139 = call i32 @value2fenv(i32* %137, i32 %138)
  %140 = load i32, i32* @Cruntime, align 4
  %141 = call i32 @setinstcap(i32* %135, i32 %136, i32 %139, i32 %140, i32 0)
  %142 = load i32*, i32** %7, align 8
  %143 = getelementptr inbounds i32, i32* %142, i64 1
  %144 = load i32, i32* @ICloseRunTime, align 4
  %145 = load i32, i32* @Cclose, align 4
  %146 = call i32 @setinstcap(i32* %143, i32 %144, i32 0, i32 %145, i32 0)
  %147 = load i32*, i32** %4, align 8
  %148 = load i32, i32* %5, align 4
  %149 = call i32 @lua_replace(i32* %147, i32 %148)
  br label %154

150:                                              ; preds = %3
  %151 = load i32*, i32** %4, align 8
  %152 = load i32, i32* %5, align 4
  %153 = call i32* @checkpattern(i32* %151, i32 %152)
  store i32* %153, i32** %7, align 8
  br label %154

154:                                              ; preds = %150, %132, %128, %124, %106, %42
  %155 = load i32*, i32** %6, align 8
  %156 = icmp ne i32* %155, null
  br i1 %156, label %157, label %162

157:                                              ; preds = %154
  %158 = load i32*, i32** %4, align 8
  %159 = load i32, i32* %5, align 4
  %160 = call i32 @pattsize(i32* %158, i32 %159)
  %161 = load i32*, i32** %6, align 8
  store i32 %160, i32* %161, align 4
  br label %162

162:                                              ; preds = %157, %154
  %163 = load i32*, i32** %7, align 8
  ret i32* %163
}

declare dso_local i32 @lua_type(i32*, i32) #1

declare dso_local i8* @lua_tolstring(i32*, i32, i64*) #1

declare dso_local i32* @newpatt(i32*, i32) #1

declare dso_local i32 @setinstaux(i32*, i32, i32, i32) #1

declare dso_local i32 @lua_replace(i32*, i32) #1

declare dso_local i32 @lua_tointeger(i32*, i32) #1

declare dso_local i32* @any(i32*, i32, i32, i32*) #1

declare dso_local i32 @setinst(i32*, i32, i32) #1

declare dso_local i32 @lua_toboolean(i32*, i32) #1

declare dso_local i32* @fix_l(i32*, i32) #1

declare dso_local i32 @setinstcap(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @value2fenv(i32*, i32) #1

declare dso_local i32* @checkpattern(i32*, i32) #1

declare dso_local i32 @pattsize(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
