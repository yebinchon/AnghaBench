; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/lua/src/extr_lvm.c_luaV_concat.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/lua/src/extr_lvm.c_luaV_concat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }

@TM_CONCAT = common dso_local global i32 0, align 4
@MAX_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"string length overflow\00", align 1
@LUAI_MAXSHORTLEN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @luaV_concat(%struct.TYPE_10__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp sge i32 %12, 2
  %14 = zext i1 %13 to i32
  %15 = call i32 @lua_assert(i32 %14)
  br label %16

16:                                               ; preds = %153, %2
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %5, align 4
  store i32 2, i32* %6, align 4
  %20 = load i32, i32* %5, align 4
  %21 = sub nsw i32 %20, 2
  %22 = call i64 @ttisstring(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %16
  %25 = load i32, i32* %5, align 4
  %26 = sub nsw i32 %25, 2
  %27 = call i64 @cvt2str(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %24, %16
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %31 = load i32, i32* %5, align 4
  %32 = sub nsw i32 %31, 1
  %33 = call i64 @tostring(%struct.TYPE_10__* %30, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %45, label %35

35:                                               ; preds = %29, %24
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %37 = load i32, i32* %5, align 4
  %38 = sub nsw i32 %37, 2
  %39 = load i32, i32* %5, align 4
  %40 = sub nsw i32 %39, 1
  %41 = load i32, i32* %5, align 4
  %42 = sub nsw i32 %41, 2
  %43 = load i32, i32* @TM_CONCAT, align 4
  %44 = call i32 @luaT_trybinTM(%struct.TYPE_10__* %36, i32 %38, i32 %40, i32 %42, i32 %43)
  br label %142

45:                                               ; preds = %29
  %46 = load i32, i32* %5, align 4
  %47 = sub nsw i32 %46, 1
  %48 = call i64 @isemptystr(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %45
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %52 = load i32, i32* %5, align 4
  %53 = sub nsw i32 %52, 2
  %54 = call i64 @tostring(%struct.TYPE_10__* %51, i32 %53)
  %55 = call i32 @cast_void(i64 %54)
  br label %141

56:                                               ; preds = %45
  %57 = load i32, i32* %5, align 4
  %58 = sub nsw i32 %57, 2
  %59 = call i64 @isemptystr(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %56
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %63 = load i32, i32* %5, align 4
  %64 = sub nsw i32 %63, 2
  %65 = load i32, i32* %5, align 4
  %66 = sub nsw i32 %65, 1
  %67 = call i32 @setobjs2s(%struct.TYPE_10__* %62, i32 %64, i32 %66)
  br label %140

68:                                               ; preds = %56
  %69 = load i32, i32* %5, align 4
  %70 = sub nsw i32 %69, 1
  %71 = call i64 @vslen(i32 %70)
  store i64 %71, i64* %7, align 8
  store i32 1, i32* %6, align 4
  br label %72

72:                                               ; preds = %106, %68
  %73 = load i32, i32* %6, align 4
  %74 = load i32, i32* %4, align 4
  %75 = icmp slt i32 %73, %74
  br i1 %75, label %76, label %84

76:                                               ; preds = %72
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %78 = load i32, i32* %5, align 4
  %79 = load i32, i32* %6, align 4
  %80 = sub nsw i32 %78, %79
  %81 = sub nsw i32 %80, 1
  %82 = call i64 @tostring(%struct.TYPE_10__* %77, i32 %81)
  %83 = icmp ne i64 %82, 0
  br label %84

84:                                               ; preds = %76, %72
  %85 = phi i1 [ false, %72 ], [ %83, %76 ]
  br i1 %85, label %86, label %109

86:                                               ; preds = %84
  %87 = load i32, i32* %5, align 4
  %88 = load i32, i32* %6, align 4
  %89 = sub nsw i32 %87, %88
  %90 = sub nsw i32 %89, 1
  %91 = call i64 @vslen(i32 %90)
  store i64 %91, i64* %9, align 8
  %92 = load i64, i64* %9, align 8
  %93 = load i32, i32* @MAX_SIZE, align 4
  %94 = sext i32 %93 to i64
  %95 = udiv i64 %94, 1
  %96 = load i64, i64* %7, align 8
  %97 = sub i64 %95, %96
  %98 = icmp uge i64 %92, %97
  br i1 %98, label %99, label %102

99:                                               ; preds = %86
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %101 = call i32 @luaG_runerror(%struct.TYPE_10__* %100, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %102

102:                                              ; preds = %99, %86
  %103 = load i64, i64* %9, align 8
  %104 = load i64, i64* %7, align 8
  %105 = add i64 %104, %103
  store i64 %105, i64* %7, align 8
  br label %106

106:                                              ; preds = %102
  %107 = load i32, i32* %6, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %6, align 4
  br label %72

109:                                              ; preds = %84
  %110 = load i64, i64* %7, align 8
  %111 = load i64, i64* @LUAI_MAXSHORTLEN, align 8
  %112 = icmp ule i64 %110, %111
  br i1 %112, label %113, label %124

113:                                              ; preds = %109
  %114 = load i64, i64* @LUAI_MAXSHORTLEN, align 8
  %115 = call i8* @llvm.stacksave()
  store i8* %115, i8** %10, align 8
  %116 = alloca i8, i64 %114, align 16
  store i64 %114, i64* %11, align 8
  %117 = load i32, i32* %5, align 4
  %118 = load i32, i32* %6, align 4
  %119 = call i32 @copy2buff(i32 %117, i32 %118, i8* %116)
  %120 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %121 = load i64, i64* %7, align 8
  %122 = call i32* @luaS_newlstr(%struct.TYPE_10__* %120, i8* %116, i64 %121)
  store i32* %122, i32** %8, align 8
  %123 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %123)
  br label %133

124:                                              ; preds = %109
  %125 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %126 = load i64, i64* %7, align 8
  %127 = call i32* @luaS_createlngstrobj(%struct.TYPE_10__* %125, i64 %126)
  store i32* %127, i32** %8, align 8
  %128 = load i32, i32* %5, align 4
  %129 = load i32, i32* %6, align 4
  %130 = load i32*, i32** %8, align 8
  %131 = call i8* @getstr(i32* %130)
  %132 = call i32 @copy2buff(i32 %128, i32 %129, i8* %131)
  br label %133

133:                                              ; preds = %124, %113
  %134 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %135 = load i32, i32* %5, align 4
  %136 = load i32, i32* %6, align 4
  %137 = sub nsw i32 %135, %136
  %138 = load i32*, i32** %8, align 8
  %139 = call i32 @setsvalue2s(%struct.TYPE_10__* %134, i32 %137, i32* %138)
  br label %140

140:                                              ; preds = %133, %61
  br label %141

141:                                              ; preds = %140, %50
  br label %142

142:                                              ; preds = %141, %35
  %143 = load i32, i32* %6, align 4
  %144 = sub nsw i32 %143, 1
  %145 = load i32, i32* %4, align 4
  %146 = sub nsw i32 %145, %144
  store i32 %146, i32* %4, align 4
  %147 = load i32, i32* %6, align 4
  %148 = sub nsw i32 %147, 1
  %149 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %150 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = sub nsw i32 %151, %148
  store i32 %152, i32* %150, align 4
  br label %153

153:                                              ; preds = %142
  %154 = load i32, i32* %4, align 4
  %155 = icmp sgt i32 %154, 1
  br i1 %155, label %16, label %156

156:                                              ; preds = %153
  ret void
}

declare dso_local i32 @lua_assert(i32) #1

declare dso_local i64 @ttisstring(i32) #1

declare dso_local i64 @cvt2str(i32) #1

declare dso_local i64 @tostring(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @luaT_trybinTM(%struct.TYPE_10__*, i32, i32, i32, i32) #1

declare dso_local i64 @isemptystr(i32) #1

declare dso_local i32 @cast_void(i64) #1

declare dso_local i32 @setobjs2s(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i64 @vslen(i32) #1

declare dso_local i32 @luaG_runerror(%struct.TYPE_10__*, i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @copy2buff(i32, i32, i8*) #1

declare dso_local i32* @luaS_newlstr(%struct.TYPE_10__*, i8*, i64) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32* @luaS_createlngstrobj(%struct.TYPE_10__*, i64) #1

declare dso_local i8* @getstr(i32*) #1

declare dso_local i32 @setsvalue2s(%struct.TYPE_10__*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
