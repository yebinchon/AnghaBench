; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/test/extr_uri_pipe.c_main.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/test/extr_uri_pipe.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8* }

@MAX_BUFFER_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Usage:\0A%s <read URI> <write URI>\0A\00", align 1
@VC_CONTAINER_IO_MODE_READ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Opening <%s> for read failed: %d\0A\00", align 1
@VC_CONTAINER_IO_MODE_WRITE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"Opening <%s> for write failed: %d\0A\00", align 1
@VC_CONTAINER_SUCCESS = common dso_local global i8* null, align 8
@VC_CONTAINER_ERROR_EOS = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [17 x i8] c"Read failed: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"Write failed: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i8, align 1
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %16 = load i32, i32* @MAX_BUFFER_SIZE, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %6, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %7, align 8
  store i32 1, i32* %12, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp slt i32 %20, 3
  br i1 %21, label %22, label %27

22:                                               ; preds = %2
  %23 = load i8**, i8*** %5, align 8
  %24 = getelementptr inbounds i8*, i8** %23, i64 0
  %25 = load i8*, i8** %24, align 8
  %26 = call i32 (i32*, i8*, i8*, ...) @LOG_INFO(i32* null, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* %25)
  store i32 1, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %146

27:                                               ; preds = %2
  %28 = load i8**, i8*** %5, align 8
  %29 = getelementptr inbounds i8*, i8** %28, i64 1
  %30 = load i8*, i8** %29, align 8
  %31 = load i32, i32* @VC_CONTAINER_IO_MODE_READ, align 4
  %32 = call %struct.TYPE_6__* @vc_container_io_open(i8* %30, i32 %31, i32* %10)
  store %struct.TYPE_6__* %32, %struct.TYPE_6__** %8, align 8
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %34 = icmp ne %struct.TYPE_6__* %33, null
  br i1 %34, label %41, label %35

35:                                               ; preds = %27
  %36 = load i8**, i8*** %5, align 8
  %37 = getelementptr inbounds i8*, i8** %36, i64 1
  %38 = load i8*, i8** %37, align 8
  %39 = load i32, i32* %10, align 4
  %40 = call i32 (i32*, i8*, i8*, ...) @LOG_INFO(i32* null, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i8* %38, i32 %39)
  store i32 2, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %146

41:                                               ; preds = %27
  %42 = load i8**, i8*** %5, align 8
  %43 = getelementptr inbounds i8*, i8** %42, i64 2
  %44 = load i8*, i8** %43, align 8
  %45 = load i32, i32* @VC_CONTAINER_IO_MODE_WRITE, align 4
  %46 = call %struct.TYPE_6__* @vc_container_io_open(i8* %44, i32 %45, i32* %10)
  store %struct.TYPE_6__* %46, %struct.TYPE_6__** %9, align 8
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %48 = icmp ne %struct.TYPE_6__* %47, null
  br i1 %48, label %57, label %49

49:                                               ; preds = %41
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %51 = call i32 @vc_container_io_close(%struct.TYPE_6__* %50)
  %52 = load i8**, i8*** %5, align 8
  %53 = getelementptr inbounds i8*, i8** %52, i64 2
  %54 = load i8*, i8** %53, align 8
  %55 = load i32, i32* %10, align 4
  %56 = call i32 (i32*, i8*, i8*, ...) @LOG_INFO(i32* null, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i8* %54, i32 %55)
  store i32 3, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %146

57:                                               ; preds = %41
  %58 = call i32 @nb_set_nonblocking_input(i32 1)
  br label %59

59:                                               ; preds = %111, %57
  %60 = load i32, i32* %12, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %112

62:                                               ; preds = %59
  store i64 0, i64* %14, align 8
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %64 = trunc i64 %17 to i32
  %65 = call i64 @vc_container_io_read(%struct.TYPE_6__* %63, i8* %19, i32 %64)
  store i64 %65, i64* %11, align 8
  br label %66

66:                                               ; preds = %75, %62
  %67 = load i32, i32* %12, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %66
  %70 = load i64, i64* %14, align 8
  %71 = load i64, i64* %11, align 8
  %72 = icmp ult i64 %70, %71
  br label %73

73:                                               ; preds = %69, %66
  %74 = phi i1 [ false, %66 ], [ %72, %69 ]
  br i1 %74, label %75, label %93

75:                                               ; preds = %73
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %77 = load i64, i64* %14, align 8
  %78 = getelementptr inbounds i8, i8* %19, i64 %77
  %79 = load i64, i64* %11, align 8
  %80 = load i64, i64* %14, align 8
  %81 = sub i64 %79, %80
  %82 = call i64 @vc_container_io_write(%struct.TYPE_6__* %76, i8* %78, i64 %81)
  %83 = load i64, i64* %14, align 8
  %84 = add i64 %83, %82
  store i64 %84, i64* %14, align 8
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = load i8*, i8** %86, align 8
  %88 = load i8*, i8** @VC_CONTAINER_SUCCESS, align 8
  %89 = icmp eq i8* %87, %88
  %90 = zext i1 %89 to i32
  %91 = load i32, i32* %12, align 4
  %92 = and i32 %91, %90
  store i32 %92, i32* %12, align 4
  br label %66

93:                                               ; preds = %73
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  %96 = load i8*, i8** %95, align 8
  %97 = load i8*, i8** @VC_CONTAINER_SUCCESS, align 8
  %98 = icmp eq i8* %96, %97
  %99 = zext i1 %98 to i32
  %100 = load i32, i32* %12, align 4
  %101 = and i32 %100, %99
  store i32 %101, i32* %12, align 4
  %102 = call i64 (...) @nb_char_available()
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %111

104:                                              ; preds = %93
  %105 = call signext i8 (...) @nb_get_char()
  store i8 %105, i8* %15, align 1
  %106 = load i8, i8* %15, align 1
  %107 = sext i8 %106 to i32
  switch i32 %107, label %109 [
    i32 113, label %108
    i32 81, label %108
    i32 4, label %108
    i32 26, label %108
    i32 27, label %108
  ]

108:                                              ; preds = %104, %104, %104, %104, %104
  store i32 0, i32* %12, align 4
  br label %110

109:                                              ; preds = %104
  br label %110

110:                                              ; preds = %109, %108
  br label %111

111:                                              ; preds = %110, %93
  br label %59

112:                                              ; preds = %59
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 0
  %115 = load i8*, i8** %114, align 8
  %116 = load i8*, i8** @VC_CONTAINER_SUCCESS, align 8
  %117 = icmp ne i8* %115, %116
  br i1 %117, label %118, label %129

118:                                              ; preds = %112
  %119 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 0
  %121 = load i8*, i8** %120, align 8
  %122 = load i8*, i8** @VC_CONTAINER_ERROR_EOS, align 8
  %123 = icmp ne i8* %121, %122
  br i1 %123, label %124, label %129

124:                                              ; preds = %118
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 0
  %127 = load i8*, i8** %126, align 8
  %128 = call i32 (i32*, i8*, i8*, ...) @LOG_INFO(i32* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i8* %127)
  br label %129

129:                                              ; preds = %124, %118, %112
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 0
  %132 = load i8*, i8** %131, align 8
  %133 = load i8*, i8** @VC_CONTAINER_SUCCESS, align 8
  %134 = icmp ne i8* %132, %133
  br i1 %134, label %135, label %140

135:                                              ; preds = %129
  %136 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 0
  %138 = load i8*, i8** %137, align 8
  %139 = call i32 (i32*, i8*, i8*, ...) @LOG_INFO(i32* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i8* %138)
  br label %140

140:                                              ; preds = %135, %129
  %141 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %142 = call i32 @vc_container_io_close(%struct.TYPE_6__* %141)
  %143 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %144 = call i32 @vc_container_io_close(%struct.TYPE_6__* %143)
  %145 = call i32 @nb_set_nonblocking_input(i32 0)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %146

146:                                              ; preds = %140, %49, %35, %22
  %147 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %147)
  %148 = load i32, i32* %3, align 4
  ret i32 %148
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @LOG_INFO(i32*, i8*, i8*, ...) #2

declare dso_local %struct.TYPE_6__* @vc_container_io_open(i8*, i32, i32*) #2

declare dso_local i32 @vc_container_io_close(%struct.TYPE_6__*) #2

declare dso_local i32 @nb_set_nonblocking_input(i32) #2

declare dso_local i64 @vc_container_io_read(%struct.TYPE_6__*, i8*, i32) #2

declare dso_local i64 @vc_container_io_write(%struct.TYPE_6__*, i8*, i64) #2

declare dso_local i64 @nb_char_available(...) #2

declare dso_local signext i8 @nb_get_char(...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
