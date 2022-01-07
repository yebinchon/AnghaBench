; ModuleID = '/home/carl/AnghaBench/Mirai-Source-Code/loader/src/extr_connection.c_connection_consume_login_prompt.c'
source_filename = "/home/carl/AnghaBench/Mirai-Source-Code/loader/src/extr_connection.c_connection_consume_login_prompt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32, i8* }

@.str = private unnamed_addr constant [5 x i8] c"ogin\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"enter\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @connection_consume_login_prompt(%struct.connection* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.connection*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.connection* %0, %struct.connection** %3, align 8
  store i32 -1, i32* %6, align 4
  %8 = load %struct.connection*, %struct.connection** %3, align 8
  %9 = getelementptr inbounds %struct.connection, %struct.connection* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %5, align 4
  br label %11

11:                                               ; preds = %67, %1
  %12 = load i32, i32* %5, align 4
  %13 = icmp sge i32 %12, 0
  br i1 %13, label %14, label %70

14:                                               ; preds = %11
  %15 = load %struct.connection*, %struct.connection** %3, align 8
  %16 = getelementptr inbounds %struct.connection, %struct.connection* %15, i32 0, i32 1
  %17 = load i8*, i8** %16, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8, i8* %17, i64 %19
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %22, 58
  br i1 %23, label %64, label %24

24:                                               ; preds = %14
  %25 = load %struct.connection*, %struct.connection** %3, align 8
  %26 = getelementptr inbounds %struct.connection, %struct.connection* %25, i32 0, i32 1
  %27 = load i8*, i8** %26, align 8
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8, i8* %27, i64 %29
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 62
  br i1 %33, label %64, label %34

34:                                               ; preds = %24
  %35 = load %struct.connection*, %struct.connection** %3, align 8
  %36 = getelementptr inbounds %struct.connection, %struct.connection* %35, i32 0, i32 1
  %37 = load i8*, i8** %36, align 8
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8, i8* %37, i64 %39
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %42, 36
  br i1 %43, label %64, label %44

44:                                               ; preds = %34
  %45 = load %struct.connection*, %struct.connection** %3, align 8
  %46 = getelementptr inbounds %struct.connection, %struct.connection* %45, i32 0, i32 1
  %47 = load i8*, i8** %46, align 8
  %48 = load i32, i32* %5, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %47, i64 %49
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp eq i32 %52, 35
  br i1 %53, label %64, label %54

54:                                               ; preds = %44
  %55 = load %struct.connection*, %struct.connection** %3, align 8
  %56 = getelementptr inbounds %struct.connection, %struct.connection* %55, i32 0, i32 1
  %57 = load i8*, i8** %56, align 8
  %58 = load i32, i32* %5, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8, i8* %57, i64 %59
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp eq i32 %62, 37
  br i1 %63, label %64, label %66

64:                                               ; preds = %54, %44, %34, %24, %14
  %65 = load i32, i32* %5, align 4
  store i32 %65, i32* %6, align 4
  br label %70

66:                                               ; preds = %54
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %5, align 4
  %69 = add nsw i32 %68, -1
  store i32 %69, i32* %5, align 4
  br label %11

70:                                               ; preds = %64, %11
  %71 = load i32, i32* %6, align 4
  %72 = icmp eq i32 %71, -1
  br i1 %72, label %73, label %97

73:                                               ; preds = %70
  %74 = load %struct.connection*, %struct.connection** %3, align 8
  %75 = getelementptr inbounds %struct.connection, %struct.connection* %74, i32 0, i32 1
  %76 = load i8*, i8** %75, align 8
  %77 = load %struct.connection*, %struct.connection** %3, align 8
  %78 = getelementptr inbounds %struct.connection, %struct.connection* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @util_memsearch(i8* %76, i32 %79, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  store i32 %80, i32* %7, align 4
  %81 = icmp ne i32 %80, -1
  br i1 %81, label %82, label %84

82:                                               ; preds = %73
  %83 = load i32, i32* %7, align 4
  store i32 %83, i32* %6, align 4
  br label %96

84:                                               ; preds = %73
  %85 = load %struct.connection*, %struct.connection** %3, align 8
  %86 = getelementptr inbounds %struct.connection, %struct.connection* %85, i32 0, i32 1
  %87 = load i8*, i8** %86, align 8
  %88 = load %struct.connection*, %struct.connection** %3, align 8
  %89 = getelementptr inbounds %struct.connection, %struct.connection* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @util_memsearch(i8* %87, i32 %90, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 5)
  store i32 %91, i32* %7, align 4
  %92 = icmp ne i32 %91, -1
  br i1 %92, label %93, label %95

93:                                               ; preds = %84
  %94 = load i32, i32* %7, align 4
  store i32 %94, i32* %6, align 4
  br label %95

95:                                               ; preds = %93, %84
  br label %96

96:                                               ; preds = %95, %82
  br label %97

97:                                               ; preds = %96, %70
  %98 = load i32, i32* %6, align 4
  %99 = icmp eq i32 %98, -1
  br i1 %99, label %100, label %101

100:                                              ; preds = %97
  store i32 0, i32* %2, align 4
  br label %103

101:                                              ; preds = %97
  %102 = load i32, i32* %6, align 4
  store i32 %102, i32* %2, align 4
  br label %103

103:                                              ; preds = %101, %100
  %104 = load i32, i32* %2, align 4
  ret i32 %104
}

declare dso_local i32 @util_memsearch(i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
