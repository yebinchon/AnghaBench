; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/libiosuhax/extr_iosuhax_devoptab.c_fs_dev_open_r.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/libiosuhax/extr_iosuhax_devoptab.c_fs_dev_open_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._reent = type { i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, i64, %struct.TYPE_7__* }
%struct.TYPE_9__ = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct._reent*, i8*, i8*, i32, i32)* @fs_dev_open_r to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fs_dev_open_r(%struct._reent* %0, i8* %1, i8* %2, i32 %3, i32 %4) #0 {
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
  %20 = call %struct.TYPE_7__* @fs_dev_get_device_data(i8* %19)
  store %struct.TYPE_7__* %20, %struct.TYPE_7__** %12, align 8
  %21 = load %struct._reent*, %struct._reent** %7, align 8
  %22 = icmp ne %struct._reent* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %180

24:                                               ; preds = %5
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %26 = icmp ne %struct.TYPE_7__* %25, null
  br i1 %26, label %31, label %27

27:                                               ; preds = %24
  %28 = load i32, i32* @ENODEV, align 4
  %29 = load %struct._reent*, %struct._reent** %7, align 8
  %30 = getelementptr inbounds %struct._reent, %struct._reent* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  store i32 -1, i32* %6, align 4
  br label %180

31:                                               ; preds = %24
  %32 = load i8*, i8** %8, align 8
  %33 = bitcast i8* %32 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %33, %struct.TYPE_8__** %13, align 8
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %35 = icmp ne %struct.TYPE_8__* %34, null
  br i1 %35, label %40, label %36

36:                                               ; preds = %31
  %37 = load i32, i32* @EINVAL, align 4
  %38 = load %struct._reent*, %struct._reent** %7, align 8
  %39 = getelementptr inbounds %struct._reent, %struct._reent* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  store i32 -1, i32* %6, align 4
  br label %180

40:                                               ; preds = %31
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 7
  store %struct.TYPE_7__* %41, %struct.TYPE_7__** %43, align 8
  %44 = load i32, i32* %10, align 4
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  %47 = load i32, i32* %10, align 4
  %48 = and i32 %47, 3
  %49 = load i32, i32* @O_RDONLY, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %58

51:                                               ; preds = %40
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 1
  store i32 1, i32* %53, align 4
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 2
  store i32 0, i32* %55, align 8
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 3
  store i32 0, i32* %57, align 4
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %14, align 8
  br label %106

58:                                               ; preds = %40
  %59 = load i32, i32* %10, align 4
  %60 = and i32 %59, 3
  %61 = load i32, i32* @O_WRONLY, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %79

63:                                               ; preds = %58
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 1
  store i32 0, i32* %65, align 4
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 2
  store i32 1, i32* %67, align 8
  %68 = load i32, i32* %10, align 4
  %69 = load i32, i32* @O_APPEND, align 4
  %70 = and i32 %68, %69
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 3
  store i32 %70, i32* %72, align 4
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = icmp ne i32 %75, 0
  %77 = zext i1 %76 to i64
  %78 = select i1 %76, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)
  store i8* %78, i8** %14, align 8
  br label %105

79:                                               ; preds = %58
  %80 = load i32, i32* %10, align 4
  %81 = and i32 %80, 3
  %82 = load i32, i32* @O_RDWR, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %100

84:                                               ; preds = %79
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 1
  store i32 1, i32* %86, align 4
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 2
  store i32 1, i32* %88, align 8
  %89 = load i32, i32* %10, align 4
  %90 = load i32, i32* @O_APPEND, align 4
  %91 = and i32 %89, %90
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 3
  store i32 %91, i32* %93, align 4
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 4
  %97 = icmp ne i32 %96, 0
  %98 = zext i1 %97 to i64
  %99 = select i1 %97, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0)
  store i8* %99, i8** %14, align 8
  br label %104

100:                                              ; preds = %79
  %101 = load i32, i32* @EACCES, align 4
  %102 = load %struct._reent*, %struct._reent** %7, align 8
  %103 = getelementptr inbounds %struct._reent, %struct._reent* %102, i32 0, i32 0
  store i32 %101, i32* %103, align 4
  store i32 -1, i32* %6, align 4
  br label %180

104:                                              ; preds = %84
  br label %105

105:                                              ; preds = %104, %63
  br label %106

106:                                              ; preds = %105, %51
  store i32 -1, i32* %15, align 4
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @OSLockMutex(i32 %109)
  %111 = load i8*, i8** %9, align 8
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %113 = call i8* @fs_dev_real_path(i8* %111, %struct.TYPE_7__* %112)
  store i8* %113, i8** %16, align 8
  %114 = load i8*, i8** %9, align 8
  %115 = icmp ne i8* %114, null
  br i1 %115, label %124, label %116

116:                                              ; preds = %106
  %117 = load i32, i32* @ENOMEM, align 4
  %118 = load %struct._reent*, %struct._reent** %7, align 8
  %119 = getelementptr inbounds %struct._reent, %struct._reent* %118, i32 0, i32 0
  store i32 %117, i32* %119, align 4
  %120 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @OSUnlockMutex(i32 %122)
  store i32 -1, i32* %6, align 4
  br label %180

124:                                              ; preds = %106
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = load i8*, i8** %16, align 8
  %129 = load i8*, i8** %14, align 8
  %130 = call i32 @IOSUHAX_FSA_OpenFile(i32 %127, i8* %128, i8* %129, i32* %15)
  store i32 %130, i32* %17, align 4
  %131 = load i8*, i8** %16, align 8
  %132 = call i32 @free(i8* %131)
  %133 = load i32, i32* %17, align 4
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %172

135:                                              ; preds = %124
  %136 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* %15, align 4
  %140 = call i32 @IOSUHAX_FSA_StatFile(i32 %138, i32 %139, %struct.TYPE_9__* %18)
  store i32 %140, i32* %17, align 4
  %141 = load i32, i32* %17, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %156

143:                                              ; preds = %135
  %144 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %145 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* %15, align 4
  %148 = call i32 @IOSUHAX_FSA_CloseFile(i32 %146, i32 %147)
  %149 = load i32, i32* %17, align 4
  %150 = load %struct._reent*, %struct._reent** %7, align 8
  %151 = getelementptr inbounds %struct._reent, %struct._reent* %150, i32 0, i32 0
  store i32 %149, i32* %151, align 4
  %152 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @OSUnlockMutex(i32 %154)
  store i32 -1, i32* %6, align 4
  br label %180

156:                                              ; preds = %135
  %157 = load i32, i32* %15, align 4
  %158 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %159 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %158, i32 0, i32 4
  store i32 %157, i32* %159, align 8
  %160 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %161 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %160, i32 0, i32 6
  store i64 0, i64* %161, align 8
  %162 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %165 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %164, i32 0, i32 5
  store i32 %163, i32* %165, align 4
  %166 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %167 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = call i32 @OSUnlockMutex(i32 %168)
  %170 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %171 = ptrtoint %struct.TYPE_8__* %170 to i32
  store i32 %171, i32* %6, align 4
  br label %180

172:                                              ; preds = %124
  %173 = load i32, i32* %17, align 4
  %174 = load %struct._reent*, %struct._reent** %7, align 8
  %175 = getelementptr inbounds %struct._reent, %struct._reent* %174, i32 0, i32 0
  store i32 %173, i32* %175, align 4
  %176 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %177 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = call i32 @OSUnlockMutex(i32 %178)
  store i32 -1, i32* %6, align 4
  br label %180

180:                                              ; preds = %172, %156, %143, %116, %100, %36, %27, %23
  %181 = load i32, i32* %6, align 4
  ret i32 %181
}

declare dso_local %struct.TYPE_7__* @fs_dev_get_device_data(i8*) #1

declare dso_local i32 @OSLockMutex(i32) #1

declare dso_local i8* @fs_dev_real_path(i8*, %struct.TYPE_7__*) #1

declare dso_local i32 @OSUnlockMutex(i32) #1

declare dso_local i32 @IOSUHAX_FSA_OpenFile(i32, i8*, i8*, i32*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @IOSUHAX_FSA_StatFile(i32, i32, %struct.TYPE_9__*) #1

declare dso_local i32 @IOSUHAX_FSA_CloseFile(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
