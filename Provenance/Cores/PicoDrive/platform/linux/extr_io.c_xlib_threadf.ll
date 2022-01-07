; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/linux/extr_io.c_xlib_threadf.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/linux/extr_io.c_xlib_threadf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_12__ = type { i64 }

@xlib_display = common dso_local global i32* null, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"cannot connect to X server %s\0A\00", align 1
@TrueColor = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [37 x i8] c"cannot handle non true color visual\0A\00", align 1
@.str.2 = private unnamed_addr constant [57 x i8] c"X vendor: %s, rel: %d, display: %s, protocol ver: %d.%d\0A\00", align 1
@scr_w = common dso_local global i32 0, align 4
@scr_h = common dso_local global i32 0, align 4
@xlib_window = common dso_local global i32 0, align 4
@verstring = common dso_local global i32 0, align 4
@ExposureMask = common dso_local global i32 0, align 4
@KeyPressMask = common dso_local global i32 0, align 4
@KeyReleaseMask = common dso_local global i32 0, align 4
@StructureNotifyMask = common dso_local global i32 0, align 4
@scr_changed = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @xlib_threadf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @xlib_threadf(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_11__, align 4
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_12__*, align 8
  %14 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %15 = load i8*, i8** %3, align 8
  %16 = bitcast i8* %15 to i32*
  store i32* %16, i32** %8, align 8
  %17 = call i32 (...) @XInitThreads()
  %18 = call i32* @XOpenDisplay(i32* null)
  store i32* %18, i32** %12, align 8
  store i32* %18, i32** @xlib_display, align 8
  %19 = load i32*, i32** %12, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %27

21:                                               ; preds = %1
  %22 = load i32, i32* @stderr, align 4
  %23 = call i8* @XDisplayName(i32* null)
  %24 = call i32 (i32, i8*, ...) @fprintf(i32 %22, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %23)
  %25 = load i32*, i32** %8, align 8
  %26 = call i32 @sem_post(i32* %25)
  store i8* null, i8** %2, align 8
  br label %157

27:                                               ; preds = %1
  %28 = load i32*, i32** %12, align 8
  %29 = call %struct.TYPE_12__* @DefaultVisual(i32* %28, i32 0)
  store %struct.TYPE_12__* %29, %struct.TYPE_12__** %13, align 8
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @TrueColor, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %42

35:                                               ; preds = %27
  %36 = load i32, i32* @stderr, align 4
  %37 = call i32 (i32, i8*, ...) @fprintf(i32 %36, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %38 = load i32*, i32** %12, align 8
  %39 = call i32 @XCloseDisplay(i32* %38)
  %40 = load i32*, i32** %8, align 8
  %41 = call i32 @sem_post(i32* %40)
  store i8* null, i8** %2, align 8
  br label %157

42:                                               ; preds = %27
  %43 = load i32*, i32** %12, align 8
  %44 = call i8* @ServerVendor(i32* %43)
  %45 = load i32*, i32** %12, align 8
  %46 = call i32 @VendorRelease(i32* %45)
  %47 = load i32*, i32** %12, align 8
  %48 = call i8* @DisplayString(i32* %47)
  %49 = load i32*, i32** %12, align 8
  %50 = call i32 @ProtocolVersion(i32* %49)
  %51 = load i32*, i32** %12, align 8
  %52 = call i32 @ProtocolRevision(i32* %51)
  %53 = call i32 @printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0), i8* %44, i32 %46, i8* %48, i32 %50, i32 %52)
  %54 = load i32*, i32** %12, align 8
  %55 = call i32 @DefaultScreen(i32* %54)
  store i32 %55, i32* %14, align 4
  %56 = load i32*, i32** %12, align 8
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %58 = call i32 @ximage_realloc(i32* %56, %struct.TYPE_12__* %57)
  %59 = load i32*, i32** %8, align 8
  %60 = call i32 @sem_post(i32* %59)
  %61 = load i32*, i32** %12, align 8
  %62 = load i32, i32* %14, align 4
  %63 = call i32 @DisplayWidth(i32* %61, i32 %62)
  store i32 %63, i32* %6, align 4
  %64 = load i32*, i32** %12, align 8
  %65 = load i32, i32* %14, align 4
  %66 = call i32 @DisplayHeight(i32* %64, i32 %65)
  store i32 %66, i32* %7, align 4
  %67 = load i32*, i32** %12, align 8
  %68 = load i32*, i32** %12, align 8
  %69 = load i32, i32* %14, align 4
  %70 = call i32 @RootWindow(i32* %68, i32 %69)
  %71 = load i32, i32* %6, align 4
  %72 = udiv i32 %71, 2
  %73 = load i32, i32* @scr_w, align 4
  %74 = sdiv i32 %73, 2
  %75 = sub i32 %72, %74
  %76 = load i32, i32* %7, align 4
  %77 = udiv i32 %76, 2
  %78 = load i32, i32* @scr_h, align 4
  %79 = sdiv i32 %78, 2
  %80 = sub i32 %77, %79
  %81 = load i32, i32* @scr_w, align 4
  %82 = add nsw i32 %81, 2
  %83 = load i32, i32* @scr_h, align 4
  %84 = add nsw i32 %83, 2
  %85 = load i32*, i32** %12, align 8
  %86 = load i32, i32* %14, align 4
  %87 = call i32 @BlackPixel(i32* %85, i32 %86)
  %88 = load i32*, i32** %12, align 8
  %89 = load i32, i32* %14, align 4
  %90 = call i32 @BlackPixel(i32* %88, i32 %89)
  %91 = call i32 @XCreateSimpleWindow(i32* %67, i32 %70, i32 %75, i32 %80, i32 %82, i32 %84, i32 1, i32 %87, i32 %90)
  store i32 %91, i32* %10, align 4
  store i32 %91, i32* @xlib_window, align 4
  %92 = call i32 @XStringListToTextProperty(i8** bitcast (i32* @verstring to i8**), i32 1, i32* %9)
  %93 = load i32*, i32** %12, align 8
  %94 = load i32, i32* %10, align 4
  %95 = call i32 @XSetWMName(i32* %93, i32 %94, i32* %9)
  %96 = load i32*, i32** %12, align 8
  %97 = load i32, i32* %10, align 4
  %98 = load i32, i32* @ExposureMask, align 4
  %99 = load i32, i32* @KeyPressMask, align 4
  %100 = or i32 %98, %99
  %101 = load i32, i32* @KeyReleaseMask, align 4
  %102 = or i32 %100, %101
  %103 = load i32, i32* @StructureNotifyMask, align 4
  %104 = or i32 %102, %103
  %105 = call i32 @XSelectInput(i32* %96, i32 %97, i32 %104)
  %106 = load i32*, i32** %12, align 8
  %107 = load i32, i32* %10, align 4
  %108 = call i32 @XMapWindow(i32* %106, i32 %107)
  br label %109

109:                                              ; preds = %42, %156
  %110 = load i32*, i32** %12, align 8
  %111 = call i32 @XNextEvent(i32* %110, %struct.TYPE_11__* %11)
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  switch i32 %113, label %155 [
    i32 130, label %114
    i32 131, label %122
    i32 132, label %144
    i32 129, label %145
    i32 128, label %150
  ]

114:                                              ; preds = %109
  br label %115

115:                                              ; preds = %119, %114
  %116 = load i32*, i32** %12, align 8
  %117 = call i32 @XCheckTypedEvent(i32* %116, i32 130, %struct.TYPE_11__* %11)
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %115
  br label %115

120:                                              ; preds = %115
  %121 = call i32 (...) @xlib_update()
  br label %156

122:                                              ; preds = %109
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 2
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  store i32 %125, i32* %4, align 4
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 2
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  store i32 %128, i32* %5, align 4
  %129 = load i32, i32* @scr_w, align 4
  %130 = load i32, i32* %4, align 4
  %131 = sub i32 %130, 2
  %132 = icmp ne i32 %129, %131
  br i1 %132, label %138, label %133

133:                                              ; preds = %122
  %134 = load i32, i32* @scr_h, align 4
  %135 = load i32, i32* %5, align 4
  %136 = sub i32 %135, 2
  %137 = icmp ne i32 %134, %136
  br i1 %137, label %138, label %143

138:                                              ; preds = %133, %122
  %139 = load i32, i32* %4, align 4
  %140 = sub i32 %139, 2
  store i32 %140, i32* @scr_w, align 4
  %141 = load i32, i32* %5, align 4
  %142 = sub i32 %141, 2
  store i32 %142, i32* @scr_h, align 4
  store i32 1, i32* @scr_changed, align 4
  br label %143

143:                                              ; preds = %138, %133
  br label %156

144:                                              ; preds = %109
  br label %156

145:                                              ; preds = %109
  %146 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 1
  %147 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @key_press_event(i32 %148)
  br label %156

150:                                              ; preds = %109
  %151 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @key_release_event(i32 %153)
  br label %156

155:                                              ; preds = %109
  br label %156

156:                                              ; preds = %155, %150, %145, %144, %143, %120
  br label %109

157:                                              ; preds = %35, %21
  %158 = load i8*, i8** %2, align 8
  ret i8* %158
}

declare dso_local i32 @XInitThreads(...) #1

declare dso_local i32* @XOpenDisplay(i32*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i8* @XDisplayName(i32*) #1

declare dso_local i32 @sem_post(i32*) #1

declare dso_local %struct.TYPE_12__* @DefaultVisual(i32*, i32) #1

declare dso_local i32 @XCloseDisplay(i32*) #1

declare dso_local i32 @printf(i8*, i8*, i32, i8*, i32, i32) #1

declare dso_local i8* @ServerVendor(i32*) #1

declare dso_local i32 @VendorRelease(i32*) #1

declare dso_local i8* @DisplayString(i32*) #1

declare dso_local i32 @ProtocolVersion(i32*) #1

declare dso_local i32 @ProtocolRevision(i32*) #1

declare dso_local i32 @DefaultScreen(i32*) #1

declare dso_local i32 @ximage_realloc(i32*, %struct.TYPE_12__*) #1

declare dso_local i32 @DisplayWidth(i32*, i32) #1

declare dso_local i32 @DisplayHeight(i32*, i32) #1

declare dso_local i32 @XCreateSimpleWindow(i32*, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @RootWindow(i32*, i32) #1

declare dso_local i32 @BlackPixel(i32*, i32) #1

declare dso_local i32 @XStringListToTextProperty(i8**, i32, i32*) #1

declare dso_local i32 @XSetWMName(i32*, i32, i32*) #1

declare dso_local i32 @XSelectInput(i32*, i32, i32) #1

declare dso_local i32 @XMapWindow(i32*, i32) #1

declare dso_local i32 @XNextEvent(i32*, %struct.TYPE_11__*) #1

declare dso_local i32 @XCheckTypedEvent(i32*, i32, %struct.TYPE_11__*) #1

declare dso_local i32 @xlib_update(...) #1

declare dso_local i32 @key_press_event(i32) #1

declare dso_local i32 @key_release_event(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
