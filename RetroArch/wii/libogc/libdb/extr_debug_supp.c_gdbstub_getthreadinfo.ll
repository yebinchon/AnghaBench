; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libdb/extr_debug_supp.c_gdbstub_getthreadinfo.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libdb/extr_debug_supp.c_gdbstub_getthreadinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i64* }
%struct.gdbstub_threadinfo = type { i64*, i64*, i64* }

@.str = private unnamed_addr constant [12 x i8] c"idle thread\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"IDLE\00", align 1
@_lwp_thr_objects = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [30 x i8] c"libogc task:   control at: 0x\00", align 1
@hexchars = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @gdbstub_getthreadinfo(i64 %0, %struct.gdbstub_threadinfo* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.gdbstub_threadinfo*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca [20 x i8], align 16
  store i64 %0, i64* %4, align 8
  store %struct.gdbstub_threadinfo* %1, %struct.gdbstub_threadinfo** %5, align 8
  %11 = load i64, i64* %4, align 8
  %12 = icmp sle i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i64 0, i64* %3, align 8
  br label %158

14:                                               ; preds = %2
  %15 = load i64, i64* %4, align 8
  %16 = icmp eq i64 %15, 1
  br i1 %16, label %17, label %30

17:                                               ; preds = %14
  %18 = load %struct.gdbstub_threadinfo*, %struct.gdbstub_threadinfo** %5, align 8
  %19 = getelementptr inbounds %struct.gdbstub_threadinfo, %struct.gdbstub_threadinfo* %18, i32 0, i32 2
  %20 = load i64*, i64** %19, align 8
  %21 = call i32 @strcpy(i64* %20, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.gdbstub_threadinfo*, %struct.gdbstub_threadinfo** %5, align 8
  %23 = getelementptr inbounds %struct.gdbstub_threadinfo, %struct.gdbstub_threadinfo* %22, i32 0, i32 1
  %24 = load i64*, i64** %23, align 8
  %25 = call i32 @strcpy(i64* %24, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %26 = load %struct.gdbstub_threadinfo*, %struct.gdbstub_threadinfo** %5, align 8
  %27 = getelementptr inbounds %struct.gdbstub_threadinfo, %struct.gdbstub_threadinfo* %26, i32 0, i32 0
  %28 = load i64*, i64** %27, align 8
  %29 = getelementptr inbounds i64, i64* %28, i64 0
  store i64 0, i64* %29, align 8
  store i64 1, i64* %3, align 8
  br label %158

30:                                               ; preds = %14
  store i64 1, i64* %6, align 8
  %31 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @_lwp_thr_objects, i32 0, i32 0), align 8
  store i64 %31, i64* %7, align 8
  %32 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @_lwp_thr_objects, i32 0, i32 1), align 8
  store i64 %32, i64* %8, align 8
  %33 = load i64, i64* %4, align 8
  %34 = load i64, i64* %6, align 8
  %35 = load i64, i64* %8, align 8
  %36 = load i64, i64* %7, align 8
  %37 = sub nsw i64 %35, %36
  %38 = add nsw i64 %34, %37
  %39 = icmp sle i64 %33, %38
  br i1 %39, label %40, label %157

40:                                               ; preds = %30
  %41 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @_lwp_thr_objects, i32 0, i32 2), align 8
  %42 = load i64, i64* %4, align 8
  %43 = load i64, i64* %6, align 8
  %44 = sub nsw i64 %42, %43
  %45 = getelementptr inbounds i64, i64* %41, i64 %44
  %46 = load i64, i64* %45, align 8
  %47 = inttoptr i64 %46 to i32*
  store i32* %47, i32** %9, align 8
  %48 = load i32*, i32** %9, align 8
  %49 = icmp eq i32* %48, null
  br i1 %49, label %50, label %51

50:                                               ; preds = %40
  store i64 0, i64* %3, align 8
  br label %158

51:                                               ; preds = %40
  %52 = load %struct.gdbstub_threadinfo*, %struct.gdbstub_threadinfo** %5, align 8
  %53 = getelementptr inbounds %struct.gdbstub_threadinfo, %struct.gdbstub_threadinfo* %52, i32 0, i32 2
  %54 = load i64*, i64** %53, align 8
  %55 = call i32 @strcpy(i64* %54, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %56 = load i8*, i8** @hexchars, align 8
  %57 = load i32*, i32** %9, align 8
  %58 = ptrtoint i32* %57 to i32
  %59 = ashr i32 %58, 28
  %60 = and i32 %59, 15
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8, i8* %56, i64 %61
  %63 = load i8, i8* %62, align 1
  %64 = getelementptr inbounds [20 x i8], [20 x i8]* %10, i64 0, i64 0
  store i8 %63, i8* %64, align 16
  %65 = load i8*, i8** @hexchars, align 8
  %66 = load i32*, i32** %9, align 8
  %67 = ptrtoint i32* %66 to i32
  %68 = ashr i32 %67, 24
  %69 = and i32 %68, 15
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8, i8* %65, i64 %70
  %72 = load i8, i8* %71, align 1
  %73 = getelementptr inbounds [20 x i8], [20 x i8]* %10, i64 0, i64 1
  store i8 %72, i8* %73, align 1
  %74 = load i8*, i8** @hexchars, align 8
  %75 = load i32*, i32** %9, align 8
  %76 = ptrtoint i32* %75 to i32
  %77 = ashr i32 %76, 20
  %78 = and i32 %77, 15
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8, i8* %74, i64 %79
  %81 = load i8, i8* %80, align 1
  %82 = getelementptr inbounds [20 x i8], [20 x i8]* %10, i64 0, i64 2
  store i8 %81, i8* %82, align 2
  %83 = load i8*, i8** @hexchars, align 8
  %84 = load i32*, i32** %9, align 8
  %85 = ptrtoint i32* %84 to i32
  %86 = ashr i32 %85, 16
  %87 = and i32 %86, 15
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i8, i8* %83, i64 %88
  %90 = load i8, i8* %89, align 1
  %91 = getelementptr inbounds [20 x i8], [20 x i8]* %10, i64 0, i64 3
  store i8 %90, i8* %91, align 1
  %92 = load i8*, i8** @hexchars, align 8
  %93 = load i32*, i32** %9, align 8
  %94 = ptrtoint i32* %93 to i32
  %95 = ashr i32 %94, 12
  %96 = and i32 %95, 15
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i8, i8* %92, i64 %97
  %99 = load i8, i8* %98, align 1
  %100 = getelementptr inbounds [20 x i8], [20 x i8]* %10, i64 0, i64 4
  store i8 %99, i8* %100, align 4
  %101 = load i8*, i8** @hexchars, align 8
  %102 = load i32*, i32** %9, align 8
  %103 = ptrtoint i32* %102 to i32
  %104 = ashr i32 %103, 8
  %105 = and i32 %104, 15
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i8, i8* %101, i64 %106
  %108 = load i8, i8* %107, align 1
  %109 = getelementptr inbounds [20 x i8], [20 x i8]* %10, i64 0, i64 5
  store i8 %108, i8* %109, align 1
  %110 = load i8*, i8** @hexchars, align 8
  %111 = load i32*, i32** %9, align 8
  %112 = ptrtoint i32* %111 to i32
  %113 = ashr i32 %112, 4
  %114 = and i32 %113, 15
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i8, i8* %110, i64 %115
  %117 = load i8, i8* %116, align 1
  %118 = getelementptr inbounds [20 x i8], [20 x i8]* %10, i64 0, i64 6
  store i8 %117, i8* %118, align 2
  %119 = load i8*, i8** @hexchars, align 8
  %120 = load i32*, i32** %9, align 8
  %121 = ptrtoint i32* %120 to i32
  %122 = and i32 %121, 15
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i8, i8* %119, i64 %123
  %125 = load i8, i8* %124, align 1
  %126 = getelementptr inbounds [20 x i8], [20 x i8]* %10, i64 0, i64 7
  store i8 %125, i8* %126, align 1
  %127 = getelementptr inbounds [20 x i8], [20 x i8]* %10, i64 0, i64 8
  store i8 0, i8* %127, align 8
  %128 = load %struct.gdbstub_threadinfo*, %struct.gdbstub_threadinfo** %5, align 8
  %129 = getelementptr inbounds %struct.gdbstub_threadinfo, %struct.gdbstub_threadinfo* %128, i32 0, i32 2
  %130 = load i64*, i64** %129, align 8
  %131 = getelementptr inbounds [20 x i8], [20 x i8]* %10, i64 0, i64 0
  %132 = call i32 @strcat(i64* %130, i8* %131)
  %133 = load %struct.gdbstub_threadinfo*, %struct.gdbstub_threadinfo** %5, align 8
  %134 = getelementptr inbounds %struct.gdbstub_threadinfo, %struct.gdbstub_threadinfo* %133, i32 0, i32 1
  %135 = load i64*, i64** %134, align 8
  %136 = getelementptr inbounds i64, i64* %135, i64 0
  store i64 0, i64* %136, align 8
  %137 = load %struct.gdbstub_threadinfo*, %struct.gdbstub_threadinfo** %5, align 8
  %138 = getelementptr inbounds %struct.gdbstub_threadinfo, %struct.gdbstub_threadinfo* %137, i32 0, i32 1
  %139 = load i64*, i64** %138, align 8
  %140 = getelementptr inbounds i64, i64* %139, i64 1
  store i64 0, i64* %140, align 8
  %141 = load %struct.gdbstub_threadinfo*, %struct.gdbstub_threadinfo** %5, align 8
  %142 = getelementptr inbounds %struct.gdbstub_threadinfo, %struct.gdbstub_threadinfo* %141, i32 0, i32 1
  %143 = load i64*, i64** %142, align 8
  %144 = getelementptr inbounds i64, i64* %143, i64 2
  store i64 0, i64* %144, align 8
  %145 = load %struct.gdbstub_threadinfo*, %struct.gdbstub_threadinfo** %5, align 8
  %146 = getelementptr inbounds %struct.gdbstub_threadinfo, %struct.gdbstub_threadinfo* %145, i32 0, i32 1
  %147 = load i64*, i64** %146, align 8
  %148 = getelementptr inbounds i64, i64* %147, i64 3
  store i64 0, i64* %148, align 8
  %149 = load %struct.gdbstub_threadinfo*, %struct.gdbstub_threadinfo** %5, align 8
  %150 = getelementptr inbounds %struct.gdbstub_threadinfo, %struct.gdbstub_threadinfo* %149, i32 0, i32 1
  %151 = load i64*, i64** %150, align 8
  %152 = getelementptr inbounds i64, i64* %151, i64 4
  store i64 0, i64* %152, align 8
  %153 = load %struct.gdbstub_threadinfo*, %struct.gdbstub_threadinfo** %5, align 8
  %154 = getelementptr inbounds %struct.gdbstub_threadinfo, %struct.gdbstub_threadinfo* %153, i32 0, i32 0
  %155 = load i64*, i64** %154, align 8
  %156 = getelementptr inbounds i64, i64* %155, i64 0
  store i64 0, i64* %156, align 8
  store i64 1, i64* %3, align 8
  br label %158

157:                                              ; preds = %30
  store i64 0, i64* %3, align 8
  br label %158

158:                                              ; preds = %157, %51, %50, %17, %13
  %159 = load i64, i64* %3, align 8
  ret i64 %159
}

declare dso_local i32 @strcpy(i64*, i8*) #1

declare dso_local i32 @strcat(i64*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
