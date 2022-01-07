; ModuleID = '/home/carl/AnghaBench/beanstalkd/extr_net.c_make_unix_socket.c'
source_filename = "/home/carl/AnghaBench/beanstalkd/extr_net.c_make_unix_socket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }
%struct.sockaddr_un = type { i32, i32 }
%struct.sockaddr = type { i32 }

@AF_UNIX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [74 x i8] c"socket path %s is too long (%ld characters), where maximum allowed is %ld\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"removing existing local socket to replace it\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"unlink\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"another file already exists in the given path\00", align 1
@SOCK_STREAM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"socket()\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"bind()\00", align 1
@verbose = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [12 x i8] c"bind %d %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"listen()\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @make_unix_socket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @make_unix_socket(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.stat, align 4
  %7 = alloca %struct.sockaddr_un, align 4
  %8 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i32 -1, i32* %4, align 4
  store i64 3, i64* %8, align 8
  %9 = call i32 @memset(%struct.sockaddr_un* %7, i32 0, i32 8)
  %10 = load i32, i32* @AF_UNIX, align 4
  %11 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %7, i32 0, i32 1
  store i32 %10, i32* %11, align 4
  %12 = load i8*, i8** %3, align 8
  %13 = call i64 @strlen(i8* %12)
  %14 = icmp ugt i64 %13, 3
  br i1 %14, label %15, label %20

15:                                               ; preds = %1
  %16 = load i8*, i8** %3, align 8
  %17 = load i8*, i8** %3, align 8
  %18 = call i64 @strlen(i8* %17)
  %19 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i8* %16, i64 %18, i64 3)
  store i32 -1, i32* %2, align 4
  br label %90

20:                                               ; preds = %1
  %21 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %7, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i8*, i8** %3, align 8
  %24 = call i32 @strncpy(i32 %22, i8* %23, i64 3)
  %25 = load i8*, i8** %3, align 8
  %26 = call i32 @stat(i8* %25, %struct.stat* %6)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %46

29:                                               ; preds = %20
  %30 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @S_ISSOCK(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %29
  %35 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  %36 = load i8*, i8** %3, align 8
  %37 = call i32 @unlink(i8* %36)
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = icmp eq i32 %38, -1
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = call i32 @twarn(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %90

42:                                               ; preds = %34
  br label %45

43:                                               ; preds = %29
  %44 = call i32 @twarnx(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %90

45:                                               ; preds = %42
  br label %46

46:                                               ; preds = %45, %20
  %47 = load i32, i32* @AF_UNIX, align 4
  %48 = load i32, i32* @SOCK_STREAM, align 4
  %49 = call i32 @socket(i32 %47, i32 %48, i32 0)
  store i32 %49, i32* %4, align 4
  %50 = load i32, i32* %4, align 4
  %51 = icmp eq i32 %50, -1
  br i1 %51, label %52, label %54

52:                                               ; preds = %46
  %53 = call i32 @twarn(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %90

54:                                               ; preds = %46
  %55 = load i32, i32* %4, align 4
  %56 = call i32 @set_nonblocking(i32 %55)
  store i32 %56, i32* %5, align 4
  %57 = load i32, i32* %5, align 4
  %58 = icmp eq i32 %57, -1
  br i1 %58, label %59, label %62

59:                                               ; preds = %54
  %60 = load i32, i32* %4, align 4
  %61 = call i32 @close(i32 %60)
  store i32 -1, i32* %2, align 4
  br label %90

62:                                               ; preds = %54
  %63 = load i32, i32* %4, align 4
  %64 = bitcast %struct.sockaddr_un* %7 to %struct.sockaddr*
  %65 = call i32 @bind(i32 %63, %struct.sockaddr* %64, i32 8)
  store i32 %65, i32* %5, align 4
  %66 = load i32, i32* %5, align 4
  %67 = icmp eq i32 %66, -1
  br i1 %67, label %68, label %72

68:                                               ; preds = %62
  %69 = call i32 @twarn(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %70 = load i32, i32* %4, align 4
  %71 = call i32 @close(i32 %70)
  store i32 -1, i32* %2, align 4
  br label %90

72:                                               ; preds = %62
  %73 = load i64, i64* @verbose, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %72
  %76 = load i32, i32* %4, align 4
  %77 = load i8*, i8** %3, align 8
  %78 = call i32 @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i32 %76, i8* %77)
  br label %79

79:                                               ; preds = %75, %72
  %80 = load i32, i32* %4, align 4
  %81 = call i32 @listen(i32 %80, i32 1024)
  store i32 %81, i32* %5, align 4
  %82 = load i32, i32* %5, align 4
  %83 = icmp eq i32 %82, -1
  br i1 %83, label %84, label %88

84:                                               ; preds = %79
  %85 = call i32 @twarn(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
  %86 = load i32, i32* %4, align 4
  %87 = call i32 @close(i32 %86)
  store i32 -1, i32* %2, align 4
  br label %90

88:                                               ; preds = %79
  %89 = load i32, i32* %4, align 4
  store i32 %89, i32* %2, align 4
  br label %90

90:                                               ; preds = %88, %84, %68, %59, %52, %43, %40, %15
  %91 = load i32, i32* %2, align 4
  ret i32 %91
}

declare dso_local i32 @memset(%struct.sockaddr_un*, i32, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @warnx(i8*, ...) #1

declare dso_local i32 @strncpy(i32, i8*, i64) #1

declare dso_local i32 @stat(i8*, %struct.stat*) #1

declare dso_local i64 @S_ISSOCK(i32) #1

declare dso_local i32 @unlink(i8*) #1

declare dso_local i32 @twarn(i8*) #1

declare dso_local i32 @twarnx(i8*) #1

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @set_nonblocking(i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @bind(i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @printf(i8*, i32, i8*) #1

declare dso_local i32 @listen(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
