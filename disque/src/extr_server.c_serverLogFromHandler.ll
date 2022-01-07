; ModuleID = '/home/carl/AnghaBench/disque/src/extr_server.c_serverLogFromHandler.c'
source_filename = "/home/carl/AnghaBench/disque/src/extr_server.c_serverLogFromHandler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i32, i64 }

@server = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@STDOUT_FILENO = common dso_local global i32 0, align 4
@O_APPEND = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@O_WRONLY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c":signal-handler (\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c") \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @serverLogFromHandler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [64 x i8], align 16
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 0), align 8
  %9 = getelementptr inbounds i8, i8* %8, i64 0
  %10 = load i8, i8* %9, align 1
  %11 = sext i8 %10 to i32
  %12 = icmp eq i32 %11, 0
  %13 = zext i1 %12 to i32
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %3, align 4
  %15 = and i32 %14, 255
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 1), align 8
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %24, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %18
  %22 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 2), align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %21, %2
  br label %95

25:                                               ; preds = %21, %18
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = load i32, i32* @STDOUT_FILENO, align 4
  br label %38

30:                                               ; preds = %25
  %31 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 0), align 8
  %32 = load i32, i32* @O_APPEND, align 4
  %33 = load i32, i32* @O_CREAT, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @O_WRONLY, align 4
  %36 = or i32 %34, %35
  %37 = call i32 @open(i8* %31, i32 %36, i32 420)
  br label %38

38:                                               ; preds = %30, %28
  %39 = phi i32 [ %29, %28 ], [ %37, %30 ]
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %5, align 4
  %41 = icmp eq i32 %40, -1
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  br label %95

43:                                               ; preds = %38
  %44 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %45 = call i32 (...) @getpid()
  %46 = call i32 @ll2string(i8* %44, i32 64, i32 %45)
  %47 = load i32, i32* %5, align 4
  %48 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %49 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %50 = call i32 @strlen(i8* %49)
  %51 = call i32 @write(i32 %47, i8* %48, i32 %50)
  %52 = icmp eq i32 %51, -1
  br i1 %52, label %53, label %54

53:                                               ; preds = %43
  br label %89

54:                                               ; preds = %43
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @write(i32 %55, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 17)
  %57 = icmp eq i32 %56, -1
  br i1 %57, label %58, label %59

58:                                               ; preds = %54
  br label %89

59:                                               ; preds = %54
  %60 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %61 = call i32 @time(i32* null)
  %62 = call i32 @ll2string(i8* %60, i32 64, i32 %61)
  %63 = load i32, i32* %5, align 4
  %64 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %65 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %66 = call i32 @strlen(i8* %65)
  %67 = call i32 @write(i32 %63, i8* %64, i32 %66)
  %68 = icmp eq i32 %67, -1
  br i1 %68, label %69, label %70

69:                                               ; preds = %59
  br label %89

70:                                               ; preds = %59
  %71 = load i32, i32* %5, align 4
  %72 = call i32 @write(i32 %71, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 2)
  %73 = icmp eq i32 %72, -1
  br i1 %73, label %74, label %75

74:                                               ; preds = %70
  br label %89

75:                                               ; preds = %70
  %76 = load i32, i32* %5, align 4
  %77 = load i8*, i8** %4, align 8
  %78 = load i8*, i8** %4, align 8
  %79 = call i32 @strlen(i8* %78)
  %80 = call i32 @write(i32 %76, i8* %77, i32 %79)
  %81 = icmp eq i32 %80, -1
  br i1 %81, label %82, label %83

82:                                               ; preds = %75
  br label %89

83:                                               ; preds = %75
  %84 = load i32, i32* %5, align 4
  %85 = call i32 @write(i32 %84, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 1)
  %86 = icmp eq i32 %85, -1
  br i1 %86, label %87, label %88

87:                                               ; preds = %83
  br label %89

88:                                               ; preds = %83
  br label %89

89:                                               ; preds = %88, %87, %82, %74, %69, %58, %53
  %90 = load i32, i32* %6, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %95, label %92

92:                                               ; preds = %89
  %93 = load i32, i32* %5, align 4
  %94 = call i32 @close(i32 %93)
  br label %95

95:                                               ; preds = %24, %42, %92, %89
  ret void
}

declare dso_local i32 @open(i8*, i32, i32) #1

declare dso_local i32 @ll2string(i8*, i32, i32) #1

declare dso_local i32 @getpid(...) #1

declare dso_local i32 @write(i32, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @time(i32*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
