; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/qcommon/extr_cmd.c_Cbuf_Execute.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/qcommon/extr_cmd.c_Cbuf_Execute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64 }

@MAX_CMD_LINE = common dso_local global i32 0, align 4
@cmd_text = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@cmd_wait = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Cbuf_Execute() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = load i32, i32* @MAX_CMD_LINE, align 4
  %7 = zext i32 %6 to i64
  %8 = call i8* @llvm.stacksave()
  store i8* %8, i8** %3, align 8
  %9 = alloca i8, i64 %7, align 16
  store i64 %7, i64* %4, align 8
  br label %10

10:                                               ; preds = %103, %0
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cmd_text, i32 0, i32 0), align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %105

13:                                               ; preds = %10
  %14 = load i64, i64* @cmd_wait, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = load i64, i64* @cmd_wait, align 8
  %18 = add nsw i64 %17, -1
  store i64 %18, i64* @cmd_wait, align 8
  br label %105

19:                                               ; preds = %13
  %20 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cmd_text, i32 0, i32 1), align 8
  %21 = inttoptr i64 %20 to i8*
  store i8* %21, i8** %2, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %1, align 4
  br label %22

22:                                               ; preds = %68, %19
  %23 = load i32, i32* %1, align 4
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cmd_text, i32 0, i32 0), align 8
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %71

26:                                               ; preds = %22
  %27 = load i8*, i8** %2, align 8
  %28 = load i32, i32* %1, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8, i8* %27, i64 %29
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 34
  br i1 %33, label %34, label %37

34:                                               ; preds = %26
  %35 = load i32, i32* %5, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %5, align 4
  br label %37

37:                                               ; preds = %34, %26
  %38 = load i32, i32* %5, align 4
  %39 = and i32 %38, 1
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %50, label %41

41:                                               ; preds = %37
  %42 = load i8*, i8** %2, align 8
  %43 = load i32, i32* %1, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8, i8* %42, i64 %44
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp eq i32 %47, 59
  br i1 %48, label %49, label %50

49:                                               ; preds = %41
  br label %71

50:                                               ; preds = %41, %37
  %51 = load i8*, i8** %2, align 8
  %52 = load i32, i32* %1, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8, i8* %51, i64 %53
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp eq i32 %56, 10
  br i1 %57, label %66, label %58

58:                                               ; preds = %50
  %59 = load i8*, i8** %2, align 8
  %60 = load i32, i32* %1, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8, i8* %59, i64 %61
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp eq i32 %64, 13
  br i1 %65, label %66, label %67

66:                                               ; preds = %58, %50
  br label %71

67:                                               ; preds = %58
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %1, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %1, align 4
  br label %22

71:                                               ; preds = %66, %49, %22
  %72 = load i32, i32* %1, align 4
  %73 = load i32, i32* @MAX_CMD_LINE, align 4
  %74 = sub nsw i32 %73, 1
  %75 = icmp sge i32 %72, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %71
  %77 = load i32, i32* @MAX_CMD_LINE, align 4
  %78 = sub nsw i32 %77, 1
  store i32 %78, i32* %1, align 4
  br label %79

79:                                               ; preds = %76, %71
  %80 = load i8*, i8** %2, align 8
  %81 = load i32, i32* %1, align 4
  %82 = call i32 @Com_Memcpy(i8* %9, i8* %80, i32 %81)
  %83 = load i32, i32* %1, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i8, i8* %9, i64 %84
  store i8 0, i8* %85, align 1
  %86 = load i32, i32* %1, align 4
  %87 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cmd_text, i32 0, i32 0), align 8
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %79
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cmd_text, i32 0, i32 0), align 8
  br label %103

90:                                               ; preds = %79
  %91 = load i32, i32* %1, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %1, align 4
  %93 = load i32, i32* %1, align 4
  %94 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cmd_text, i32 0, i32 0), align 8
  %95 = sub nsw i32 %94, %93
  store i32 %95, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cmd_text, i32 0, i32 0), align 8
  %96 = load i8*, i8** %2, align 8
  %97 = load i8*, i8** %2, align 8
  %98 = load i32, i32* %1, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i8, i8* %97, i64 %99
  %101 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cmd_text, i32 0, i32 0), align 8
  %102 = call i32 @memmove(i8* %96, i8* %100, i32 %101)
  br label %103

103:                                              ; preds = %90, %89
  %104 = call i32 @Cmd_ExecuteString(i8* %9)
  br label %10

105:                                              ; preds = %16, %10
  %106 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %106)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @Com_Memcpy(i8*, i8*, i32) #2

declare dso_local i32 @memmove(i8*, i8*, i32) #2

declare dso_local i32 @Cmd_ExecuteString(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
