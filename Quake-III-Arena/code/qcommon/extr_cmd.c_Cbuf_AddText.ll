; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/qcommon/extr_cmd.c_Cbuf_AddText.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/qcommon/extr_cmd.c_Cbuf_AddText.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32* }

@cmd_text = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str = private unnamed_addr constant [24 x i8] c"Cbuf_AddText: overflow\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Cbuf_AddText(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = call i32 @strlen(i8* %4)
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cmd_text, i32 0, i32 0), align 8
  %7 = load i32, i32* %3, align 4
  %8 = add nsw i32 %6, %7
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cmd_text, i32 0, i32 1), align 4
  %10 = icmp sge i32 %8, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = call i32 @Com_Printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %24

13:                                               ; preds = %1
  %14 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cmd_text, i32 0, i32 2), align 8
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cmd_text, i32 0, i32 0), align 8
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  %18 = load i8*, i8** %2, align 8
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @Com_Memcpy(i32* %17, i8* %18, i32 %19)
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cmd_text, i32 0, i32 0), align 8
  %23 = add nsw i32 %22, %21
  store i32 %23, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cmd_text, i32 0, i32 0), align 8
  br label %24

24:                                               ; preds = %13, %11
  ret void
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @Com_Printf(i8*) #1

declare dso_local i32 @Com_Memcpy(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
