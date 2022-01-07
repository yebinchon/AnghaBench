; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/lua/src/extr_lutf8lib.c_byteoffset.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/lua/src/extr_lutf8lib.c_byteoffset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [22 x i8] c"position out of range\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"initial position is a continuation byte\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @byteoffset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @byteoffset(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = call i8* @luaL_checklstring(i32* %8, i32 1, i64* %4)
  store i8* %9, i8** %5, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = call i64 @luaL_checkinteger(i32* %10, i32 2)
  store i64 %11, i64* %6, align 8
  %12 = load i64, i64* %6, align 8
  %13 = icmp sge i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %18

15:                                               ; preds = %1
  %16 = load i64, i64* %4, align 8
  %17 = add i64 %16, 1
  br label %18

18:                                               ; preds = %15, %14
  %19 = phi i64 [ 1, %14 ], [ %17, %15 ]
  store i64 %19, i64* %7, align 8
  %20 = load i32*, i32** %3, align 8
  %21 = load i64, i64* %7, align 8
  %22 = call i32 @luaL_optinteger(i32* %20, i32 3, i64 %21)
  %23 = load i64, i64* %4, align 8
  %24 = call i64 @u_posrelat(i32 %22, i64 %23)
  store i64 %24, i64* %7, align 8
  %25 = load i32*, i32** %3, align 8
  %26 = load i64, i64* %7, align 8
  %27 = icmp sle i64 1, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %18
  %29 = load i64, i64* %7, align 8
  %30 = add nsw i64 %29, -1
  store i64 %30, i64* %7, align 8
  %31 = load i64, i64* %4, align 8
  %32 = icmp sle i64 %30, %31
  br label %33

33:                                               ; preds = %28, %18
  %34 = phi i1 [ false, %18 ], [ %32, %28 ]
  %35 = zext i1 %34 to i32
  %36 = call i32 @luaL_argcheck(i32* %25, i32 %35, i32 3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %37 = load i64, i64* %6, align 8
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %55

39:                                               ; preds = %33
  br label %40

40:                                               ; preds = %51, %39
  %41 = load i64, i64* %7, align 8
  %42 = icmp sgt i64 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %40
  %44 = load i8*, i8** %5, align 8
  %45 = load i64, i64* %7, align 8
  %46 = getelementptr inbounds i8, i8* %44, i64 %45
  %47 = call i64 @iscont(i8* %46)
  %48 = icmp ne i64 %47, 0
  br label %49

49:                                               ; preds = %43, %40
  %50 = phi i1 [ false, %40 ], [ %48, %43 ]
  br i1 %50, label %51, label %54

51:                                               ; preds = %49
  %52 = load i64, i64* %7, align 8
  %53 = add nsw i64 %52, -1
  store i64 %53, i64* %7, align 8
  br label %40

54:                                               ; preds = %49
  br label %122

55:                                               ; preds = %33
  %56 = load i8*, i8** %5, align 8
  %57 = load i64, i64* %7, align 8
  %58 = getelementptr inbounds i8, i8* %56, i64 %57
  %59 = call i64 @iscont(i8* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %55
  %62 = load i32*, i32** %3, align 8
  %63 = call i32 @luaL_error(i32* %62, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  store i32 %63, i32* %2, align 4
  br label %134

64:                                               ; preds = %55
  %65 = load i64, i64* %6, align 8
  %66 = icmp slt i64 %65, 0
  br i1 %66, label %67, label %95

67:                                               ; preds = %64
  br label %68

68:                                               ; preds = %91, %67
  %69 = load i64, i64* %6, align 8
  %70 = icmp slt i64 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %68
  %72 = load i64, i64* %7, align 8
  %73 = icmp sgt i64 %72, 0
  br label %74

74:                                               ; preds = %71, %68
  %75 = phi i1 [ false, %68 ], [ %73, %71 ]
  br i1 %75, label %76, label %94

76:                                               ; preds = %74
  br label %77

77:                                               ; preds = %89, %76
  %78 = load i64, i64* %7, align 8
  %79 = add nsw i64 %78, -1
  store i64 %79, i64* %7, align 8
  br label %80

80:                                               ; preds = %77
  %81 = load i64, i64* %7, align 8
  %82 = icmp sgt i64 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %80
  %84 = load i8*, i8** %5, align 8
  %85 = load i64, i64* %7, align 8
  %86 = getelementptr inbounds i8, i8* %84, i64 %85
  %87 = call i64 @iscont(i8* %86)
  %88 = icmp ne i64 %87, 0
  br label %89

89:                                               ; preds = %83, %80
  %90 = phi i1 [ false, %80 ], [ %88, %83 ]
  br i1 %90, label %77, label %91

91:                                               ; preds = %89
  %92 = load i64, i64* %6, align 8
  %93 = add nsw i64 %92, 1
  store i64 %93, i64* %6, align 8
  br label %68

94:                                               ; preds = %74
  br label %121

95:                                               ; preds = %64
  %96 = load i64, i64* %6, align 8
  %97 = add nsw i64 %96, -1
  store i64 %97, i64* %6, align 8
  br label %98

98:                                               ; preds = %117, %95
  %99 = load i64, i64* %6, align 8
  %100 = icmp sgt i64 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %98
  %102 = load i64, i64* %7, align 8
  %103 = load i64, i64* %4, align 8
  %104 = icmp slt i64 %102, %103
  br label %105

105:                                              ; preds = %101, %98
  %106 = phi i1 [ false, %98 ], [ %104, %101 ]
  br i1 %106, label %107, label %120

107:                                              ; preds = %105
  br label %108

108:                                              ; preds = %111, %107
  %109 = load i64, i64* %7, align 8
  %110 = add nsw i64 %109, 1
  store i64 %110, i64* %7, align 8
  br label %111

111:                                              ; preds = %108
  %112 = load i8*, i8** %5, align 8
  %113 = load i64, i64* %7, align 8
  %114 = getelementptr inbounds i8, i8* %112, i64 %113
  %115 = call i64 @iscont(i8* %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %108, label %117

117:                                              ; preds = %111
  %118 = load i64, i64* %6, align 8
  %119 = add nsw i64 %118, -1
  store i64 %119, i64* %6, align 8
  br label %98

120:                                              ; preds = %105
  br label %121

121:                                              ; preds = %120, %94
  br label %122

122:                                              ; preds = %121, %54
  %123 = load i64, i64* %6, align 8
  %124 = icmp eq i64 %123, 0
  br i1 %124, label %125, label %130

125:                                              ; preds = %122
  %126 = load i32*, i32** %3, align 8
  %127 = load i64, i64* %7, align 8
  %128 = add nsw i64 %127, 1
  %129 = call i32 @lua_pushinteger(i32* %126, i64 %128)
  br label %133

130:                                              ; preds = %122
  %131 = load i32*, i32** %3, align 8
  %132 = call i32 @lua_pushnil(i32* %131)
  br label %133

133:                                              ; preds = %130, %125
  store i32 1, i32* %2, align 4
  br label %134

134:                                              ; preds = %133, %61
  %135 = load i32, i32* %2, align 4
  ret i32 %135
}

declare dso_local i8* @luaL_checklstring(i32*, i32, i64*) #1

declare dso_local i64 @luaL_checkinteger(i32*, i32) #1

declare dso_local i64 @u_posrelat(i32, i64) #1

declare dso_local i32 @luaL_optinteger(i32*, i32, i64) #1

declare dso_local i32 @luaL_argcheck(i32*, i32, i32, i8*) #1

declare dso_local i64 @iscont(i8*) #1

declare dso_local i32 @luaL_error(i32*, i8*) #1

declare dso_local i32 @lua_pushinteger(i32*, i64) #1

declare dso_local i32 @lua_pushnil(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
