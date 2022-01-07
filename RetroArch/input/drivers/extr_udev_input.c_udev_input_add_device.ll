; ModuleID = '/home/carl/AnghaBench/RetroArch/input/drivers/extr_udev_input.c_udev_input_add_device.c'
source_filename = "/home/carl/AnghaBench/RetroArch/input/drivers/extr_udev_input.c_udev_input_add_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_11__** }
%struct.TYPE_11__ = type { i32, i32, %struct.TYPE_8__, i32, i32, i64 }
%struct.TYPE_8__ = type { i32, i32, i32, i32 }
%struct.stat = type { i64 }
%struct.input_absinfo = type { i32, i32 }

@O_RDONLY = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@UDEV_INPUT_MOUSE = common dso_local global i32 0, align 4
@UDEV_INPUT_TOUCHPAD = common dso_local global i32 0, align 4
@ABS_X = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@EPOLLIN = common dso_local global i32 0, align 4
@EPOLL_CTL_ADD = common dso_local global i32 0, align 4
@EVFILT_READ = common dso_local global i32 0, align 4
@EV_ADD = common dso_local global i32 0, align 4
@LISTENSOCKET = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, i32, i8*, i32)* @udev_input_add_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @udev_input_add_device(%struct.TYPE_10__* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.stat, align 8
  %12 = alloca %struct.input_absinfo, align 4
  %13 = alloca %struct.TYPE_11__**, align 8
  %14 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %14, align 8
  %15 = getelementptr inbounds %struct.stat, %struct.stat* %11, i32 0, i32 0
  store i64 0, i64* %15, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = call i64 @stat(i8* %16, %struct.stat* %11)
  %18 = icmp slt i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %161

20:                                               ; preds = %4
  %21 = load i8*, i8** %8, align 8
  %22 = load i32, i32* @O_RDONLY, align 4
  %23 = load i32, i32* @O_NONBLOCK, align 4
  %24 = or i32 %22, %23
  %25 = call i32 @open(i8* %21, i32 %24)
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %10, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %20
  store i32 0, i32* %5, align 4
  br label %161

29:                                               ; preds = %20
  %30 = call i64 @calloc(i32 1, i32 40)
  %31 = inttoptr i64 %30 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %31, %struct.TYPE_11__** %14, align 8
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %33 = icmp ne %struct.TYPE_11__* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %29
  br label %152

35:                                               ; preds = %29
  %36 = load i32, i32* %10, align 4
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = getelementptr inbounds %struct.stat, %struct.stat* %11, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 5
  store i64 %40, i64* %42, align 8
  %43 = load i32, i32* %9, align 4
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 4
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* %7, align 4
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 8
  %52 = load i8*, i8** %8, align 8
  %53 = call i32 @strlcpy(i32 %51, i8* %52, i32 4)
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* @UDEV_INPUT_MOUSE, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %61, label %57

57:                                               ; preds = %35
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* @UDEV_INPUT_TOUCHPAD, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %124

61:                                               ; preds = %57, %35
  %62 = load i32, i32* %10, align 4
  %63 = load i32, i32* @ABS_X, align 4
  %64 = call i32 @EVIOCGABS(i32 %63)
  %65 = call i64 @ioctl(i32 %62, i32 %64, %struct.input_absinfo* %12)
  %66 = icmp sge i64 %65, 0
  br i1 %66, label %67, label %92

67:                                               ; preds = %61
  %68 = getelementptr inbounds %struct.input_absinfo, %struct.input_absinfo* %12, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = getelementptr inbounds %struct.input_absinfo, %struct.input_absinfo* %12, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = icmp sge i32 %69, %71
  br i1 %72, label %73, label %80

73:                                               ; preds = %67
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  store i32 -1, i32* %76, align 8
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 1
  store i32 -1, i32* %79, align 4
  br label %91

80:                                               ; preds = %67
  %81 = getelementptr inbounds %struct.input_absinfo, %struct.input_absinfo* %12, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 0
  store i32 %82, i32* %85, align 8
  %86 = getelementptr inbounds %struct.input_absinfo, %struct.input_absinfo* %12, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 1
  store i32 %87, i32* %90, align 4
  br label %91

91:                                               ; preds = %80, %73
  br label %92

92:                                               ; preds = %91, %61
  %93 = load i32, i32* %10, align 4
  %94 = load i32, i32* @ABS_Y, align 4
  %95 = call i32 @EVIOCGABS(i32 %94)
  %96 = call i64 @ioctl(i32 %93, i32 %95, %struct.input_absinfo* %12)
  %97 = icmp sge i64 %96, 0
  br i1 %97, label %98, label %123

98:                                               ; preds = %92
  %99 = getelementptr inbounds %struct.input_absinfo, %struct.input_absinfo* %12, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = getelementptr inbounds %struct.input_absinfo, %struct.input_absinfo* %12, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = icmp sge i32 %100, %102
  br i1 %103, label %104, label %111

104:                                              ; preds = %98
  %105 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 2
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 2
  store i32 -1, i32* %107, align 8
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i32 0, i32 2
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 3
  store i32 -1, i32* %110, align 4
  br label %122

111:                                              ; preds = %98
  %112 = getelementptr inbounds %struct.input_absinfo, %struct.input_absinfo* %12, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i32 0, i32 2
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 2
  store i32 %113, i32* %116, align 8
  %117 = getelementptr inbounds %struct.input_absinfo, %struct.input_absinfo* %12, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i32 0, i32 2
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 3
  store i32 %118, i32* %121, align 4
  br label %122

122:                                              ; preds = %111, %104
  br label %123

123:                                              ; preds = %122, %92
  br label %124

124:                                              ; preds = %123, %57
  %125 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i32 0, i32 2
  %127 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %126, align 8
  %128 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = add nsw i32 %130, 1
  %132 = sext i32 %131 to i64
  %133 = mul i64 %132, 8
  %134 = trunc i64 %133 to i32
  %135 = call i64 @realloc(%struct.TYPE_11__** %127, i32 %134)
  %136 = inttoptr i64 %135 to %struct.TYPE_11__**
  store %struct.TYPE_11__** %136, %struct.TYPE_11__*** %13, align 8
  %137 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %13, align 8
  %138 = icmp ne %struct.TYPE_11__** %137, null
  br i1 %138, label %140, label %139

139:                                              ; preds = %124
  br label %152

140:                                              ; preds = %124
  %141 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %142 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %13, align 8
  %143 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %144 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %144, align 8
  %147 = sext i32 %145 to i64
  %148 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %142, i64 %147
  store %struct.TYPE_11__* %141, %struct.TYPE_11__** %148, align 8
  %149 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %13, align 8
  %150 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %151 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %150, i32 0, i32 2
  store %struct.TYPE_11__** %149, %struct.TYPE_11__*** %151, align 8
  store i32 1, i32* %5, align 4
  br label %161

152:                                              ; preds = %139, %34
  %153 = load i32, i32* %10, align 4
  %154 = call i32 @close(i32 %153)
  %155 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %156 = icmp ne %struct.TYPE_11__* %155, null
  br i1 %156, label %157, label %160

157:                                              ; preds = %152
  %158 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %159 = call i32 @free(%struct.TYPE_11__* %158)
  br label %160

160:                                              ; preds = %157, %152
  store i32 0, i32* %5, align 4
  br label %161

161:                                              ; preds = %160, %140, %28, %19
  %162 = load i32, i32* %5, align 4
  ret i32 %162
}

declare dso_local i64 @stat(i8*, %struct.stat*) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i64 @ioctl(i32, i32, %struct.input_absinfo*) #1

declare dso_local i32 @EVIOCGABS(i32) #1

declare dso_local i64 @realloc(%struct.TYPE_11__**, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @free(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
