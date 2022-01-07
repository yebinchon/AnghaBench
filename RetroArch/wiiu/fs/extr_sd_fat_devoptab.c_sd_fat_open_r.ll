; ModuleID = '/home/carl/AnghaBench/RetroArch/wiiu/fs/extr_sd_fat_devoptab.c_sd_fat_open_r.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wiiu/fs/extr_sd_fat_devoptab.c_sd_fat_open_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._reent = type { i32 }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, i64, %struct.TYPE_7__* }
%struct.TYPE_9__ = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@O_WRONLY = common dso_local global i32 0, align 4
@O_APPEND = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@O_RDWR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"a+\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"r+\00", align 1
@EACCES = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct._reent*, i8*, i8*, i32, i32)* @sd_fat_open_r to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sd_fat_open_r(%struct._reent* %0, i8* %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct._reent*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_7__*, align 8
  %13 = alloca %struct.TYPE_8__*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_9__, align 4
  store %struct._reent* %0, %struct._reent** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %19 = load i8*, i8** %9, align 8
  %20 = call %struct.TYPE_7__* @sd_fat_get_device_data(i8* %19)
  store %struct.TYPE_7__* %20, %struct.TYPE_7__** %12, align 8
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %22 = icmp ne %struct.TYPE_7__* %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %5
  %24 = load i32, i32* @ENODEV, align 4
  %25 = load %struct._reent*, %struct._reent** %7, align 8
  %26 = getelementptr inbounds %struct._reent, %struct._reent* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  store i32 -1, i32* %6, align 4
  br label %178

27:                                               ; preds = %5
  %28 = load i8*, i8** %8, align 8
  %29 = bitcast i8* %28 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %29, %struct.TYPE_8__** %13, align 8
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 7
  store %struct.TYPE_7__* %30, %struct.TYPE_7__** %32, align 8
  %33 = load i32, i32* %10, align 4
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  %36 = load i32, i32* %10, align 4
  %37 = and i32 %36, 3
  %38 = load i32, i32* @O_RDONLY, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %47

40:                                               ; preds = %27
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 1
  store i32 1, i32* %42, align 4
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 2
  store i32 0, i32* %44, align 8
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 3
  store i32 0, i32* %46, align 4
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %14, align 8
  br label %95

47:                                               ; preds = %27
  %48 = load i32, i32* %10, align 4
  %49 = and i32 %48, 3
  %50 = load i32, i32* @O_WRONLY, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %68

52:                                               ; preds = %47
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 1
  store i32 0, i32* %54, align 4
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 2
  store i32 1, i32* %56, align 8
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* @O_APPEND, align 4
  %59 = and i32 %57, %58
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 3
  store i32 %59, i32* %61, align 4
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = icmp ne i32 %64, 0
  %66 = zext i1 %65 to i64
  %67 = select i1 %65, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)
  store i8* %67, i8** %14, align 8
  br label %94

68:                                               ; preds = %47
  %69 = load i32, i32* %10, align 4
  %70 = and i32 %69, 3
  %71 = load i32, i32* @O_RDWR, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %89

73:                                               ; preds = %68
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 1
  store i32 1, i32* %75, align 4
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 2
  store i32 1, i32* %77, align 8
  %78 = load i32, i32* %10, align 4
  %79 = load i32, i32* @O_APPEND, align 4
  %80 = and i32 %78, %79
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 3
  store i32 %80, i32* %82, align 4
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = icmp ne i32 %85, 0
  %87 = zext i1 %86 to i64
  %88 = select i1 %86, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0)
  store i8* %88, i8** %14, align 8
  br label %93

89:                                               ; preds = %68
  %90 = load i32, i32* @EACCES, align 4
  %91 = load %struct._reent*, %struct._reent** %7, align 8
  %92 = getelementptr inbounds %struct._reent, %struct._reent* %91, i32 0, i32 0
  store i32 %90, i32* %92, align 4
  store i32 -1, i32* %6, align 4
  br label %178

93:                                               ; preds = %73
  br label %94

94:                                               ; preds = %93, %52
  br label %95

95:                                               ; preds = %94, %40
  store i32 -1, i32* %15, align 4
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @OSLockMutex(i32 %98)
  %100 = load i8*, i8** %9, align 8
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %102 = call i8* @sd_fat_real_path(i8* %100, %struct.TYPE_7__* %101)
  store i8* %102, i8** %16, align 8
  %103 = load i8*, i8** %9, align 8
  %104 = icmp ne i8* %103, null
  br i1 %104, label %113, label %105

105:                                              ; preds = %95
  %106 = load i32, i32* @ENOMEM, align 4
  %107 = load %struct._reent*, %struct._reent** %7, align 8
  %108 = getelementptr inbounds %struct._reent, %struct._reent* %107, i32 0, i32 0
  store i32 %106, i32* %108, align 4
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @OSUnlockMutex(i32 %111)
  store i32 -1, i32* %6, align 4
  br label %178

113:                                              ; preds = %95
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load i8*, i8** %16, align 8
  %121 = load i8*, i8** %14, align 8
  %122 = call i32 @FSOpenFile(i32 %116, i32 %119, i8* %120, i8* %121, i32* %15, i32 -1)
  store i32 %122, i32* %17, align 4
  %123 = load i8*, i8** %16, align 8
  %124 = call i32 @free(i8* %123)
  %125 = load i32, i32* %17, align 4
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %170

127:                                              ; preds = %113
  %128 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* %15, align 4
  %135 = call i32 @FSGetStatFile(i32 %130, i32 %133, i32 %134, %struct.TYPE_9__* %18, i32 -1)
  store i32 %135, i32* %17, align 4
  %136 = load i32, i32* %17, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %154

138:                                              ; preds = %127
  %139 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* %15, align 4
  %146 = call i32 @FSCloseFile(i32 %141, i32 %144, i32 %145, i32 -1)
  %147 = load i32, i32* %17, align 4
  %148 = load %struct._reent*, %struct._reent** %7, align 8
  %149 = getelementptr inbounds %struct._reent, %struct._reent* %148, i32 0, i32 0
  store i32 %147, i32* %149, align 4
  %150 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %151 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @OSUnlockMutex(i32 %152)
  store i32 -1, i32* %6, align 4
  br label %178

154:                                              ; preds = %127
  %155 = load i32, i32* %15, align 4
  %156 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %157 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %156, i32 0, i32 4
  store i32 %155, i32* %157, align 8
  %158 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %159 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %158, i32 0, i32 6
  store i64 0, i64* %159, align 8
  %160 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %162, i32 0, i32 5
  store i32 %161, i32* %163, align 4
  %164 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %165 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = call i32 @OSUnlockMutex(i32 %166)
  %168 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %169 = ptrtoint %struct.TYPE_8__* %168 to i32
  store i32 %169, i32* %6, align 4
  br label %178

170:                                              ; preds = %113
  %171 = load i32, i32* %17, align 4
  %172 = load %struct._reent*, %struct._reent** %7, align 8
  %173 = getelementptr inbounds %struct._reent, %struct._reent* %172, i32 0, i32 0
  store i32 %171, i32* %173, align 4
  %174 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %175 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = call i32 @OSUnlockMutex(i32 %176)
  store i32 -1, i32* %6, align 4
  br label %178

178:                                              ; preds = %170, %154, %138, %105, %89, %23
  %179 = load i32, i32* %6, align 4
  ret i32 %179
}

declare dso_local %struct.TYPE_7__* @sd_fat_get_device_data(i8*) #1

declare dso_local i32 @OSLockMutex(i32) #1

declare dso_local i8* @sd_fat_real_path(i8*, %struct.TYPE_7__*) #1

declare dso_local i32 @OSUnlockMutex(i32) #1

declare dso_local i32 @FSOpenFile(i32, i32, i8*, i8*, i32*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @FSGetStatFile(i32, i32, i32, %struct.TYPE_9__*, i32) #1

declare dso_local i32 @FSCloseFile(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
