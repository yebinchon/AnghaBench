; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/lua/src/extr_lstrlib.c_getoption.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/lua/src/extr_lstrlib.c_getoption.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32, i8* }

@Kint = common dso_local global i32 0, align 4
@Kuint = common dso_local global i32 0, align 4
@Kfloat = common dso_local global i32 0, align 4
@Kstring = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"missing size for format option 'c'\00", align 1
@Kchar = common dso_local global i32 0, align 4
@Kzstr = common dso_local global i32 0, align 4
@Kpadding = common dso_local global i32 0, align 4
@Kpaddalign = common dso_local global i32 0, align 4
@nativeendian = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@MAXALIGN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"invalid format option '%c'\00", align 1
@Knop = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i8**, i32*)* @getoption to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getoption(%struct.TYPE_5__* %0, i8** %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load i8**, i8*** %6, align 8
  %10 = load i8*, i8** %9, align 8
  %11 = getelementptr inbounds i8, i8* %10, i32 1
  store i8* %11, i8** %9, align 8
  %12 = load i8, i8* %10, align 1
  %13 = sext i8 %12 to i32
  store i32 %13, i32* %8, align 4
  %14 = load i32*, i32** %7, align 8
  store i32 0, i32* %14, align 4
  %15 = load i32, i32* %8, align 4
  switch i32 %15, label %112 [
    i32 98, label %16
    i32 66, label %19
    i32 104, label %22
    i32 72, label %25
    i32 108, label %28
    i32 76, label %31
    i32 106, label %34
    i32 74, label %37
    i32 84, label %40
    i32 102, label %43
    i32 100, label %46
    i32 110, label %49
    i32 105, label %52
    i32 73, label %59
    i32 115, label %66
    i32 99, label %73
    i32 122, label %87
    i32 120, label %89
    i32 88, label %92
    i32 32, label %94
    i32 60, label %95
    i32 62, label %98
    i32 61, label %101
    i32 33, label %105
  ]

16:                                               ; preds = %3
  %17 = load i32*, i32** %7, align 8
  store i32 1, i32* %17, align 4
  %18 = load i32, i32* @Kint, align 4
  store i32 %18, i32* %4, align 4
  br label %120

19:                                               ; preds = %3
  %20 = load i32*, i32** %7, align 8
  store i32 1, i32* %20, align 4
  %21 = load i32, i32* @Kuint, align 4
  store i32 %21, i32* %4, align 4
  br label %120

22:                                               ; preds = %3
  %23 = load i32*, i32** %7, align 8
  store i32 2, i32* %23, align 4
  %24 = load i32, i32* @Kint, align 4
  store i32 %24, i32* %4, align 4
  br label %120

25:                                               ; preds = %3
  %26 = load i32*, i32** %7, align 8
  store i32 2, i32* %26, align 4
  %27 = load i32, i32* @Kuint, align 4
  store i32 %27, i32* %4, align 4
  br label %120

28:                                               ; preds = %3
  %29 = load i32*, i32** %7, align 8
  store i32 8, i32* %29, align 4
  %30 = load i32, i32* @Kint, align 4
  store i32 %30, i32* %4, align 4
  br label %120

31:                                               ; preds = %3
  %32 = load i32*, i32** %7, align 8
  store i32 8, i32* %32, align 4
  %33 = load i32, i32* @Kuint, align 4
  store i32 %33, i32* %4, align 4
  br label %120

34:                                               ; preds = %3
  %35 = load i32*, i32** %7, align 8
  store i32 4, i32* %35, align 4
  %36 = load i32, i32* @Kint, align 4
  store i32 %36, i32* %4, align 4
  br label %120

37:                                               ; preds = %3
  %38 = load i32*, i32** %7, align 8
  store i32 4, i32* %38, align 4
  %39 = load i32, i32* @Kuint, align 4
  store i32 %39, i32* %4, align 4
  br label %120

40:                                               ; preds = %3
  %41 = load i32*, i32** %7, align 8
  store i32 8, i32* %41, align 4
  %42 = load i32, i32* @Kuint, align 4
  store i32 %42, i32* %4, align 4
  br label %120

43:                                               ; preds = %3
  %44 = load i32*, i32** %7, align 8
  store i32 4, i32* %44, align 4
  %45 = load i32, i32* @Kfloat, align 4
  store i32 %45, i32* %4, align 4
  br label %120

46:                                               ; preds = %3
  %47 = load i32*, i32** %7, align 8
  store i32 8, i32* %47, align 4
  %48 = load i32, i32* @Kfloat, align 4
  store i32 %48, i32* %4, align 4
  br label %120

49:                                               ; preds = %3
  %50 = load i32*, i32** %7, align 8
  store i32 4, i32* %50, align 4
  %51 = load i32, i32* @Kfloat, align 4
  store i32 %51, i32* %4, align 4
  br label %120

52:                                               ; preds = %3
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %54 = load i8**, i8*** %6, align 8
  %55 = call i8* @getnumlimit(%struct.TYPE_5__* %53, i8** %54, i32 4)
  %56 = ptrtoint i8* %55 to i32
  %57 = load i32*, i32** %7, align 8
  store i32 %56, i32* %57, align 4
  %58 = load i32, i32* @Kint, align 4
  store i32 %58, i32* %4, align 4
  br label %120

59:                                               ; preds = %3
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %61 = load i8**, i8*** %6, align 8
  %62 = call i8* @getnumlimit(%struct.TYPE_5__* %60, i8** %61, i32 4)
  %63 = ptrtoint i8* %62 to i32
  %64 = load i32*, i32** %7, align 8
  store i32 %63, i32* %64, align 4
  %65 = load i32, i32* @Kuint, align 4
  store i32 %65, i32* %4, align 4
  br label %120

66:                                               ; preds = %3
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %68 = load i8**, i8*** %6, align 8
  %69 = call i8* @getnumlimit(%struct.TYPE_5__* %67, i8** %68, i32 8)
  %70 = ptrtoint i8* %69 to i32
  %71 = load i32*, i32** %7, align 8
  store i32 %70, i32* %71, align 4
  %72 = load i32, i32* @Kstring, align 4
  store i32 %72, i32* %4, align 4
  br label %120

73:                                               ; preds = %3
  %74 = load i8**, i8*** %6, align 8
  %75 = call i32 @getnum(i8** %74, i32 -1)
  %76 = load i32*, i32** %7, align 8
  store i32 %75, i32* %76, align 4
  %77 = load i32*, i32** %7, align 8
  %78 = load i32, i32* %77, align 4
  %79 = icmp eq i32 %78, -1
  br i1 %79, label %80, label %85

80:                                               ; preds = %73
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = call i32 (i32, i8*, ...) @luaL_error(i32 %83, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %85

85:                                               ; preds = %80, %73
  %86 = load i32, i32* @Kchar, align 4
  store i32 %86, i32* %4, align 4
  br label %120

87:                                               ; preds = %3
  %88 = load i32, i32* @Kzstr, align 4
  store i32 %88, i32* %4, align 4
  br label %120

89:                                               ; preds = %3
  %90 = load i32*, i32** %7, align 8
  store i32 1, i32* %90, align 4
  %91 = load i32, i32* @Kpadding, align 4
  store i32 %91, i32* %4, align 4
  br label %120

92:                                               ; preds = %3
  %93 = load i32, i32* @Kpaddalign, align 4
  store i32 %93, i32* %4, align 4
  br label %120

94:                                               ; preds = %3
  br label %118

95:                                               ; preds = %3
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 0
  store i32 1, i32* %97, align 8
  br label %118

98:                                               ; preds = %3
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 0
  store i32 0, i32* %100, align 8
  br label %118

101:                                              ; preds = %3
  %102 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @nativeendian, i32 0, i32 0), align 4
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 0
  store i32 %102, i32* %104, align 8
  br label %118

105:                                              ; preds = %3
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %107 = load i8**, i8*** %6, align 8
  %108 = load i32, i32* @MAXALIGN, align 4
  %109 = call i8* @getnumlimit(%struct.TYPE_5__* %106, i8** %107, i32 %108)
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 2
  store i8* %109, i8** %111, align 8
  br label %118

112:                                              ; preds = %3
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* %8, align 4
  %117 = call i32 (i32, i8*, ...) @luaL_error(i32 %115, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %116)
  br label %118

118:                                              ; preds = %112, %105, %101, %98, %95, %94
  %119 = load i32, i32* @Knop, align 4
  store i32 %119, i32* %4, align 4
  br label %120

120:                                              ; preds = %118, %92, %89, %87, %85, %66, %59, %52, %49, %46, %43, %40, %37, %34, %31, %28, %25, %22, %19, %16
  %121 = load i32, i32* %4, align 4
  ret i32 %121
}

declare dso_local i8* @getnumlimit(%struct.TYPE_5__*, i8**, i32) #1

declare dso_local i32 @getnum(i8**, i32) #1

declare dso_local i32 @luaL_error(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
