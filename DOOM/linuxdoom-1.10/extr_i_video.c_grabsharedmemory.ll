; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_i_video.c_grabsharedmemory.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_i_video.c_grabsharedmemory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i64 }
%struct.TYPE_5__ = type { i64 }
%struct.shmid_ds = type { i32, i32, %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { i64 }

@IPC_STAT = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"User %d appears to be running DOOM.  Is that wise?\0A\00", align 1
@IPC_RMID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Was able to kill my old shared memory\0A\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"Was NOT able to kill my old shared memory\00", align 1
@IPC_CREAT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"Could not get shared memory\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"will use %d's stale shared memory\0A\00", align 1
@.str.5 = private unnamed_addr constant [69 x i8] c"warning: can't use stale shared memory belonging to id %d, key=0x%x\0A\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"could not get stats on key=%d\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"errno=%d\0A\00", align 1
@errno = external dso_local global i32, align 4
@.str.8 = private unnamed_addr constant [32 x i8] c"Could not get any shared memory\00", align 1
@.str.9 = private unnamed_addr constant [63 x i8] c"Sorry, system too polluted with stale shared memory segments.\0A\00", align 1
@X_shminfo = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@image = common dso_local global %struct.TYPE_5__* null, align 8
@.str.10 = private unnamed_addr constant [32 x i8] c"shared memory id=%d, addr=0x%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @grabsharedmemory(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.shmid_ds, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 1685024621, i32* %3, align 4
  store i32 64000, i32* %5, align 4
  store i32 5, i32* %8, align 4
  br label %9

9:                                                ; preds = %102, %1
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @shmget(i32 %10, i32 %11, i32 511)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, -1
  br i1 %14, label %15, label %87

15:                                               ; preds = %9
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @IPC_STAT, align 4
  %18 = call i32 @shmctl(i32 %16, i32 %17, %struct.shmid_ds* %4)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %83, label %21

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.shmid_ds, %struct.shmid_ds* %4, i32 0, i32 3
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %21
  %26 = load i32, i32* @stderr, align 4
  %27 = getelementptr inbounds %struct.shmid_ds, %struct.shmid_ds* %4, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 (i32, i8*, ...) @fprintf(i32 %26, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* %3, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %3, align 4
  br label %82

32:                                               ; preds = %21
  %33 = call i64 (...) @getuid()
  %34 = getelementptr inbounds %struct.shmid_ds, %struct.shmid_ds* %4, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %33, %36
  br i1 %37, label %38, label %63

38:                                               ; preds = %32
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @IPC_RMID, align 4
  %41 = call i32 @shmctl(i32 %39, i32 %40, %struct.shmid_ds* null)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %38
  %45 = load i32, i32* @stderr, align 4
  %46 = call i32 (i32, i8*, ...) @fprintf(i32 %45, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  br label %49

47:                                               ; preds = %38
  %48 = call i32 (i8*, ...) @I_Error(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  br label %49

49:                                               ; preds = %47, %44
  %50 = load i32, i32* %3, align 4
  %51 = load i32, i32* %2, align 4
  %52 = load i32, i32* @IPC_CREAT, align 4
  %53 = or i32 %52, 511
  %54 = call i32 @shmget(i32 %50, i32 %51, i32 %53)
  store i32 %54, i32* %6, align 4
  %55 = load i32, i32* %6, align 4
  %56 = icmp eq i32 %55, -1
  br i1 %56, label %57, label %59

57:                                               ; preds = %49
  %58 = call i32 (i8*, ...) @I_Error(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  br label %59

59:                                               ; preds = %57, %49
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* @IPC_STAT, align 4
  %62 = call i32 @shmctl(i32 %60, i32 %61, %struct.shmid_ds* %4)
  store i32 %62, i32* %7, align 4
  br label %106

63:                                               ; preds = %32
  %64 = load i32, i32* %2, align 4
  %65 = getelementptr inbounds %struct.shmid_ds, %struct.shmid_ds* %4, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = icmp sge i32 %64, %66
  br i1 %67, label %68, label %73

68:                                               ; preds = %63
  %69 = load i32, i32* @stderr, align 4
  %70 = getelementptr inbounds %struct.shmid_ds, %struct.shmid_ds* %4, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i32 (i32, i8*, ...) @fprintf(i32 %69, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i32 %71)
  br label %106

73:                                               ; preds = %63
  %74 = load i32, i32* @stderr, align 4
  %75 = getelementptr inbounds %struct.shmid_ds, %struct.shmid_ds* %4, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* %3, align 4
  %78 = call i32 (i32, i8*, ...) @fprintf(i32 %74, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.5, i64 0, i64 0), i32 %76, i32 %77)
  %79 = load i32, i32* %3, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %3, align 4
  br label %81

81:                                               ; preds = %73
  br label %82

82:                                               ; preds = %81, %25
  br label %86

83:                                               ; preds = %15
  %84 = load i32, i32* %3, align 4
  %85 = call i32 (i8*, ...) @I_Error(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i32 %84)
  br label %86

86:                                               ; preds = %83, %82
  br label %101

87:                                               ; preds = %9
  %88 = load i32, i32* %3, align 4
  %89 = load i32, i32* %2, align 4
  %90 = load i32, i32* @IPC_CREAT, align 4
  %91 = or i32 %90, 511
  %92 = call i32 @shmget(i32 %88, i32 %89, i32 %91)
  store i32 %92, i32* %6, align 4
  %93 = load i32, i32* %6, align 4
  %94 = icmp eq i32 %93, -1
  br i1 %94, label %95, label %100

95:                                               ; preds = %87
  %96 = load i32, i32* @stderr, align 4
  %97 = load i32, i32* @errno, align 4
  %98 = call i32 (i32, i8*, ...) @fprintf(i32 %96, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i32 %97)
  %99 = call i32 (i8*, ...) @I_Error(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0))
  br label %100

100:                                              ; preds = %95, %87
  br label %106

101:                                              ; preds = %86
  br label %102

102:                                              ; preds = %101
  %103 = load i32, i32* %8, align 4
  %104 = add nsw i32 %103, -1
  store i32 %104, i32* %8, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %9, label %106

106:                                              ; preds = %102, %100, %68, %59
  %107 = load i32, i32* %8, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %111, label %109

109:                                              ; preds = %106
  %110 = call i32 (i8*, ...) @I_Error(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.9, i64 0, i64 0))
  br label %111

111:                                              ; preds = %109, %106
  %112 = load i32, i32* %6, align 4
  store i32 %112, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @X_shminfo, i32 0, i32 0), align 8
  %113 = load i32, i32* %6, align 4
  %114 = call i64 @shmat(i32 %113, i32 0, i32 0)
  store i64 %114, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @X_shminfo, i32 0, i32 1), align 8
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** @image, align 8
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 0
  store i64 %114, i64* %116, align 8
  %117 = load i32, i32* @stderr, align 4
  %118 = load i32, i32* %6, align 4
  %119 = load %struct.TYPE_5__*, %struct.TYPE_5__** @image, align 8
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = trunc i64 %121 to i32
  %123 = call i32 (i32, i8*, ...) @fprintf(i32 %117, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10, i64 0, i64 0), i32 %118, i32 %122)
  ret void
}

declare dso_local i32 @shmget(i32, i32, i32) #1

declare dso_local i32 @shmctl(i32, i32, %struct.shmid_ds*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i64 @getuid(...) #1

declare dso_local i32 @I_Error(i8*, ...) #1

declare dso_local i64 @shmat(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
