; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/libpicofe/extr_in_sdl.c_in_sdl_menu_translate.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/libpicofe/extr_in_sdl.c_in_sdl_menu_translate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in_sdl_state = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.in_pdata* }
%struct.in_pdata = type { i8**, i32, i32, %struct.menu_keymap*, %struct.menu_keymap* }
%struct.menu_keymap = type { i32, i32 }

@in_sdl_keys = common dso_local global i8** null, align 8
@SDLK_LAST = common dso_local global i32 0, align 4
@PBTN_CHAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8*)* @in_sdl_menu_translate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @in_sdl_menu_translate(i8* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.in_sdl_state*, align 8
  %9 = alloca %struct.in_pdata*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca %struct.menu_keymap*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = bitcast i8* %15 to %struct.in_sdl_state*
  store %struct.in_sdl_state* %16, %struct.in_sdl_state** %8, align 8
  %17 = load %struct.in_sdl_state*, %struct.in_sdl_state** %8, align 8
  %18 = getelementptr inbounds %struct.in_sdl_state, %struct.in_sdl_state* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load %struct.in_pdata*, %struct.in_pdata** %20, align 8
  store %struct.in_pdata* %21, %struct.in_pdata** %9, align 8
  %22 = load i8**, i8*** @in_sdl_keys, align 8
  store i8** %22, i8*** %10, align 8
  store i32 0, i32* %13, align 4
  %23 = load %struct.in_pdata*, %struct.in_pdata** %9, align 8
  %24 = getelementptr inbounds %struct.in_pdata, %struct.in_pdata* %23, i32 0, i32 0
  %25 = load i8**, i8*** %24, align 8
  %26 = icmp ne i8** %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %3
  %28 = load %struct.in_pdata*, %struct.in_pdata** %9, align 8
  %29 = getelementptr inbounds %struct.in_pdata, %struct.in_pdata* %28, i32 0, i32 0
  %30 = load i8**, i8*** %29, align 8
  store i8** %30, i8*** %10, align 8
  br label %31

31:                                               ; preds = %27, %3
  %32 = load %struct.in_sdl_state*, %struct.in_sdl_state** %8, align 8
  %33 = getelementptr inbounds %struct.in_sdl_state, %struct.in_sdl_state* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %31
  %37 = load %struct.in_pdata*, %struct.in_pdata** %9, align 8
  %38 = getelementptr inbounds %struct.in_pdata, %struct.in_pdata* %37, i32 0, i32 4
  %39 = load %struct.menu_keymap*, %struct.menu_keymap** %38, align 8
  store %struct.menu_keymap* %39, %struct.menu_keymap** %11, align 8
  %40 = load %struct.in_pdata*, %struct.in_pdata** %9, align 8
  %41 = getelementptr inbounds %struct.in_pdata, %struct.in_pdata* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  store i32 %42, i32* %12, align 4
  br label %50

43:                                               ; preds = %31
  %44 = load %struct.in_pdata*, %struct.in_pdata** %9, align 8
  %45 = getelementptr inbounds %struct.in_pdata, %struct.in_pdata* %44, i32 0, i32 3
  %46 = load %struct.menu_keymap*, %struct.menu_keymap** %45, align 8
  store %struct.menu_keymap* %46, %struct.menu_keymap** %11, align 8
  %47 = load %struct.in_pdata*, %struct.in_pdata** %9, align 8
  %48 = getelementptr inbounds %struct.in_pdata, %struct.in_pdata* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %12, align 4
  br label %50

50:                                               ; preds = %43, %36
  %51 = load i32, i32* %6, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %81

53:                                               ; preds = %50
  %54 = load i32, i32* %6, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %6, align 4
  store i32 0, i32* %14, align 4
  br label %56

56:                                               ; preds = %77, %53
  %57 = load i32, i32* %14, align 4
  %58 = load i32, i32* %12, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %80

60:                                               ; preds = %56
  %61 = load %struct.menu_keymap*, %struct.menu_keymap** %11, align 8
  %62 = load i32, i32* %14, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.menu_keymap, %struct.menu_keymap* %61, i64 %63
  %65 = getelementptr inbounds %struct.menu_keymap, %struct.menu_keymap* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %6, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %76

69:                                               ; preds = %60
  %70 = load %struct.menu_keymap*, %struct.menu_keymap** %11, align 8
  %71 = load i32, i32* %14, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.menu_keymap, %struct.menu_keymap* %70, i64 %72
  %74 = getelementptr inbounds %struct.menu_keymap, %struct.menu_keymap* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  store i32 %75, i32* %4, align 4
  br label %145

76:                                               ; preds = %60
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %14, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %14, align 4
  br label %56

80:                                               ; preds = %56
  br label %143

81:                                               ; preds = %50
  store i32 0, i32* %14, align 4
  br label %82

82:                                               ; preds = %103, %81
  %83 = load i32, i32* %14, align 4
  %84 = load i32, i32* %12, align 4
  %85 = icmp slt i32 %83, %84
  br i1 %85, label %86, label %106

86:                                               ; preds = %82
  %87 = load %struct.menu_keymap*, %struct.menu_keymap** %11, align 8
  %88 = load i32, i32* %14, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.menu_keymap, %struct.menu_keymap* %87, i64 %89
  %91 = getelementptr inbounds %struct.menu_keymap, %struct.menu_keymap* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* %6, align 4
  %94 = icmp eq i32 %92, %93
  br i1 %94, label %95, label %102

95:                                               ; preds = %86
  %96 = load %struct.menu_keymap*, %struct.menu_keymap** %11, align 8
  %97 = load i32, i32* %14, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.menu_keymap, %struct.menu_keymap* %96, i64 %98
  %100 = getelementptr inbounds %struct.menu_keymap, %struct.menu_keymap* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  store i32 %101, i32* %13, align 4
  br label %106

102:                                              ; preds = %86
  br label %103

103:                                              ; preds = %102
  %104 = load i32, i32* %14, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %14, align 4
  br label %82

106:                                              ; preds = %95, %82
  %107 = load i8*, i8** %7, align 8
  %108 = icmp ne i8* %107, null
  br i1 %108, label %109, label %142

109:                                              ; preds = %106
  %110 = load i32, i32* %6, align 4
  %111 = load i32, i32* @SDLK_LAST, align 4
  %112 = icmp ult i32 %110, %111
  br i1 %112, label %113, label %142

113:                                              ; preds = %109
  %114 = load i8**, i8*** %10, align 8
  %115 = load i32, i32* %6, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i8*, i8** %114, i64 %116
  %118 = load i8*, i8** %117, align 8
  %119 = icmp ne i8* %118, null
  br i1 %119, label %120, label %142

120:                                              ; preds = %113
  %121 = load i8**, i8*** %10, align 8
  %122 = load i32, i32* %6, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i8*, i8** %121, i64 %123
  %125 = load i8*, i8** %124, align 8
  %126 = getelementptr inbounds i8, i8* %125, i64 1
  %127 = load i8, i8* %126, align 1
  %128 = sext i8 %127 to i32
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %142

130:                                              ; preds = %120
  %131 = load i32, i32* @PBTN_CHAR, align 4
  %132 = load i32, i32* %13, align 4
  %133 = or i32 %132, %131
  store i32 %133, i32* %13, align 4
  %134 = load i8**, i8*** %10, align 8
  %135 = load i32, i32* %6, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i8*, i8** %134, i64 %136
  %138 = load i8*, i8** %137, align 8
  %139 = getelementptr inbounds i8, i8* %138, i64 0
  %140 = load i8, i8* %139, align 1
  %141 = load i8*, i8** %7, align 8
  store i8 %140, i8* %141, align 1
  br label %142

142:                                              ; preds = %130, %120, %113, %109, %106
  br label %143

143:                                              ; preds = %142, %80
  %144 = load i32, i32* %13, align 4
  store i32 %144, i32* %4, align 4
  br label %145

145:                                              ; preds = %143, %69
  %146 = load i32, i32* %4, align 4
  ret i32 %146
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
