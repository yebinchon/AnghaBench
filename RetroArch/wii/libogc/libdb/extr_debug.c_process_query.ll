; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libdb/extr_debug.c_process_query.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libdb/extr_debug.c_process_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gdbstub_threadinfo = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"E01\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"E02\00", align 1
@QM_MAXTHREADS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i32)* @process_query to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_query(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.gdbstub_threadinfo, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %19 = load i8*, i8** %4, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 1
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  switch i32 %22, label %112 [
    i32 67, label %23
    i32 80, label %34
    i32 76, label %59
  ]

23:                                               ; preds = %3
  %24 = load i8*, i8** %5, align 8
  store i8* %24, i8** %7, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %26, i8** %7, align 8
  store i8 81, i8* %25, align 1
  %27 = load i8*, i8** %7, align 8
  %28 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %28, i8** %7, align 8
  store i8 67, i8* %27, align 1
  %29 = load i8*, i8** %7, align 8
  %30 = load i32, i32* %6, align 4
  %31 = call i8* @thread2vhstr(i8* %29, i32 %30)
  store i8* %31, i8** %7, align 8
  %32 = load i8*, i8** %7, align 8
  %33 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %33, i8** %7, align 8
  store i8 0, i8* %32, align 1
  br label %113

34:                                               ; preds = %3
  %35 = load i8*, i8** %4, align 8
  %36 = call i32 @parseqp(i8* %35, i32* %10, i32* %9)
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %34
  %40 = load i32, i32* %10, align 4
  %41 = and i32 %40, -32
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %39, %34
  %44 = load i8*, i8** %5, align 8
  %45 = call i32 @strcpy(i8* %44, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  br label %113

46:                                               ; preds = %39
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @gdbstub_getthreadinfo(i32 %47, %struct.gdbstub_threadinfo* %11)
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %8, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %46
  %52 = load i8*, i8** %5, align 8
  %53 = call i32 @strcpy(i8* %52, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  br label %113

54:                                               ; preds = %46
  %55 = load i8*, i8** %5, align 8
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* %9, align 4
  %58 = call i32 @packqq(i8* %55, i32 %56, i32 %57, %struct.gdbstub_threadinfo* %11)
  br label %113

59:                                               ; preds = %3
  %60 = load i8*, i8** %4, align 8
  %61 = call i32 @parseql(i8* %60, i32* %14, i32* %15, i32* %13)
  store i32 %61, i32* %12, align 4
  %62 = load i32, i32* %12, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %59
  %65 = load i8*, i8** %5, align 8
  %66 = call i32 @strcpy(i8* %65, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  br label %113

67:                                               ; preds = %59
  %68 = load i32, i32* %15, align 4
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %67
  %71 = load i8*, i8** %5, align 8
  %72 = call i32 @strcpy(i8* %71, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  br label %113

73:                                               ; preds = %67
  %74 = load i32, i32* %15, align 4
  %75 = load i32, i32* @QM_MAXTHREADS, align 4
  %76 = icmp sgt i32 %74, %75
  br i1 %76, label %77, label %79

77:                                               ; preds = %73
  %78 = load i32, i32* @QM_MAXTHREADS, align 4
  store i32 %78, i32* %15, align 4
  br label %79

79:                                               ; preds = %77, %73
  %80 = load i8*, i8** %5, align 8
  %81 = call i8* @reserve_qmheader(i8* %80)
  store i8* %81, i8** %7, align 8
  %82 = load i32, i32* %14, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %79
  store i32 0, i32* %18, align 4
  br label %87

85:                                               ; preds = %79
  %86 = load i32, i32* %13, align 4
  store i32 %86, i32* %18, align 4
  br label %87

87:                                               ; preds = %85, %84
  store i32 0, i32* %17, align 4
  store i32 0, i32* %16, align 4
  br label %88

88:                                               ; preds = %102, %87
  %89 = load i32, i32* %16, align 4
  %90 = load i32, i32* %15, align 4
  %91 = icmp slt i32 %89, %90
  br i1 %91, label %92, label %105

92:                                               ; preds = %88
  %93 = load i32, i32* %18, align 4
  %94 = call i32 @gdbstub_getnextthread(i32 %93)
  store i32 %94, i32* %18, align 4
  %95 = load i32, i32* %18, align 4
  %96 = icmp sle i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %92
  store i32 1, i32* %17, align 4
  br label %105

98:                                               ; preds = %92
  %99 = load i8*, i8** %7, align 8
  %100 = load i32, i32* %18, align 4
  %101 = call i8* @packqmthread(i8* %99, i32 %100)
  store i8* %101, i8** %7, align 8
  br label %102

102:                                              ; preds = %98
  %103 = load i32, i32* %16, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %16, align 4
  br label %88

105:                                              ; preds = %97, %88
  %106 = load i8*, i8** %7, align 8
  store i8 0, i8* %106, align 1
  %107 = load i8*, i8** %5, align 8
  %108 = load i32, i32* %16, align 4
  %109 = load i32, i32* %17, align 4
  %110 = load i32, i32* %13, align 4
  %111 = call i32 @packqmheader(i8* %107, i32 %108, i32 %109, i32 %110)
  br label %113

112:                                              ; preds = %3
  br label %113

113:                                              ; preds = %112, %105, %70, %64, %54, %51, %43, %23
  ret void
}

declare dso_local i8* @thread2vhstr(i8*, i32) #1

declare dso_local i32 @parseqp(i8*, i32*, i32*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @gdbstub_getthreadinfo(i32, %struct.gdbstub_threadinfo*) #1

declare dso_local i32 @packqq(i8*, i32, i32, %struct.gdbstub_threadinfo*) #1

declare dso_local i32 @parseql(i8*, i32*, i32*, i32*) #1

declare dso_local i8* @reserve_qmheader(i8*) #1

declare dso_local i32 @gdbstub_getnextthread(i32) #1

declare dso_local i8* @packqmthread(i8*, i32) #1

declare dso_local i32 @packqmheader(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
