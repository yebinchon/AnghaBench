; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/libpicofe/linux/extr_in_evdev.c_in_evdev_menu_translate.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/libpicofe/linux/extr_in_evdev.c_in_evdev_menu_translate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.in_pdata* }
%struct.in_pdata = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32 }

@KEY_CNT = common dso_local global i32 0, align 4
@in_evdev_keys = common dso_local global i8** null, align 8
@PBTN_CHAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8*)* @in_evdev_menu_translate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @in_evdev_menu_translate(i8* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca %struct.in_pdata*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8, align 1
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = bitcast i8* %14 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %15, %struct.TYPE_6__** %8, align 8
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 2
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load %struct.in_pdata*, %struct.in_pdata** %19, align 8
  store %struct.in_pdata* %20, %struct.in_pdata** %9, align 8
  store i32 0, i32* %10, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %71

23:                                               ; preds = %3
  %24 = load i32, i32* %6, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %6, align 4
  store i32 0, i32* %11, align 4
  br label %26

26:                                               ; preds = %67, %23
  %27 = load i32, i32* %11, align 4
  %28 = load %struct.in_pdata*, %struct.in_pdata** %9, align 8
  %29 = getelementptr inbounds %struct.in_pdata, %struct.in_pdata* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp slt i32 %27, %30
  br i1 %31, label %32, label %70

32:                                               ; preds = %26
  %33 = load %struct.in_pdata*, %struct.in_pdata** %9, align 8
  %34 = getelementptr inbounds %struct.in_pdata, %struct.in_pdata* %33, i32 0, i32 1
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = load i32, i32* %11, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %66

43:                                               ; preds = %32
  %44 = load %struct.in_pdata*, %struct.in_pdata** %9, align 8
  %45 = getelementptr inbounds %struct.in_pdata, %struct.in_pdata* %44, i32 0, i32 1
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %45, align 8
  %47 = load i32, i32* %11, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %12, align 4
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* %12, align 4
  %56 = icmp sle i32 %54, %55
  br i1 %56, label %57, label %65

57:                                               ; preds = %43
  %58 = load i32, i32* %12, align 4
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = icmp sle i32 %58, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %57
  %64 = load i32, i32* %12, align 4
  store i32 %64, i32* %4, align 4
  br label %156

65:                                               ; preds = %57, %43
  br label %66

66:                                               ; preds = %65, %32
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %11, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %11, align 4
  br label %26

70:                                               ; preds = %26
  br label %154

71:                                               ; preds = %3
  store i32 0, i32* %11, align 4
  br label %72

72:                                               ; preds = %99, %71
  %73 = load i32, i32* %11, align 4
  %74 = load %struct.in_pdata*, %struct.in_pdata** %9, align 8
  %75 = getelementptr inbounds %struct.in_pdata, %struct.in_pdata* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = icmp slt i32 %73, %76
  br i1 %77, label %78, label %102

78:                                               ; preds = %72
  %79 = load %struct.in_pdata*, %struct.in_pdata** %9, align 8
  %80 = getelementptr inbounds %struct.in_pdata, %struct.in_pdata* %79, i32 0, i32 1
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %80, align 8
  %82 = load i32, i32* %11, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %6, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %98

89:                                               ; preds = %78
  %90 = load %struct.in_pdata*, %struct.in_pdata** %9, align 8
  %91 = getelementptr inbounds %struct.in_pdata, %struct.in_pdata* %90, i32 0, i32 1
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %91, align 8
  %93 = load i32, i32* %11, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  store i32 %97, i32* %10, align 4
  br label %102

98:                                               ; preds = %78
  br label %99

99:                                               ; preds = %98
  %100 = load i32, i32* %11, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %11, align 4
  br label %72

102:                                              ; preds = %89, %72
  %103 = load i8*, i8** %7, align 8
  %104 = icmp ne i8* %103, null
  br i1 %104, label %105, label %153

105:                                              ; preds = %102
  %106 = load i32, i32* %6, align 4
  %107 = load i32, i32* @KEY_CNT, align 4
  %108 = icmp ult i32 %106, %107
  br i1 %108, label %109, label %153

109:                                              ; preds = %105
  %110 = load i8**, i8*** @in_evdev_keys, align 8
  %111 = load i32, i32* %6, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i8*, i8** %110, i64 %112
  %114 = load i8*, i8** %113, align 8
  %115 = icmp ne i8* %114, null
  br i1 %115, label %116, label %153

116:                                              ; preds = %109
  %117 = load i8**, i8*** @in_evdev_keys, align 8
  %118 = load i32, i32* %6, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i8*, i8** %117, i64 %119
  %121 = load i8*, i8** %120, align 8
  %122 = getelementptr inbounds i8, i8* %121, i64 1
  %123 = load i8, i8* %122, align 1
  %124 = sext i8 %123 to i32
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %153

126:                                              ; preds = %116
  %127 = load i8**, i8*** @in_evdev_keys, align 8
  %128 = load i32, i32* %6, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i8*, i8** %127, i64 %129
  %131 = load i8*, i8** %130, align 8
  %132 = getelementptr inbounds i8, i8* %131, i64 0
  %133 = load i8, i8* %132, align 1
  store i8 %133, i8* %13, align 1
  %134 = load i8, i8* %13, align 1
  %135 = sext i8 %134 to i32
  %136 = icmp sle i32 65, %135
  br i1 %136, label %137, label %147

137:                                              ; preds = %126
  %138 = load i8, i8* %13, align 1
  %139 = sext i8 %138 to i32
  %140 = icmp sle i32 %139, 90
  br i1 %140, label %141, label %147

141:                                              ; preds = %137
  %142 = load i8, i8* %13, align 1
  %143 = sext i8 %142 to i32
  %144 = add nsw i32 97, %143
  %145 = sub nsw i32 %144, 65
  %146 = trunc i32 %145 to i8
  store i8 %146, i8* %13, align 1
  br label %147

147:                                              ; preds = %141, %137, %126
  %148 = load i32, i32* @PBTN_CHAR, align 4
  %149 = load i32, i32* %10, align 4
  %150 = or i32 %149, %148
  store i32 %150, i32* %10, align 4
  %151 = load i8, i8* %13, align 1
  %152 = load i8*, i8** %7, align 8
  store i8 %151, i8* %152, align 1
  br label %153

153:                                              ; preds = %147, %116, %109, %105, %102
  br label %154

154:                                              ; preds = %153, %70
  %155 = load i32, i32* %10, align 4
  store i32 %155, i32* %4, align 4
  br label %156

156:                                              ; preds = %154, %63
  %157 = load i32, i32* %4, align 4
  ret i32 %157
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
