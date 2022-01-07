; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_g_svcmds.c_Svcmd_ForceTeam_f.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_g_svcmds.c_Svcmd_ForceTeam_f.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }

@MAX_TOKEN_CHARS = common dso_local global i32 0, align 4
@g_entities = common dso_local global i32* null, align 8
@level = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Svcmd_ForceTeam_f() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = load i32, i32* @MAX_TOKEN_CHARS, align 4
  %6 = zext i32 %5 to i64
  %7 = call i8* @llvm.stacksave()
  store i8* %7, i8** %2, align 8
  %8 = alloca i8, i64 %6, align 16
  store i64 %6, i64* %3, align 8
  %9 = trunc i64 %6 to i32
  %10 = call i32 @trap_Argv(i32 1, i8* %8, i32 %9)
  %11 = call i32* @ClientForString(i8* %8)
  store i32* %11, i32** %1, align 8
  %12 = load i32*, i32** %1, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %0
  store i32 1, i32* %4, align 4
  br label %27

15:                                               ; preds = %0
  %16 = trunc i64 %6 to i32
  %17 = call i32 @trap_Argv(i32 2, i8* %8, i32 %16)
  %18 = load i32*, i32** @g_entities, align 8
  %19 = load i32*, i32** %1, align 8
  %20 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @level, i32 0, i32 0), align 8
  %21 = ptrtoint i32* %19 to i64
  %22 = ptrtoint i32* %20 to i64
  %23 = sub i64 %21, %22
  %24 = sdiv exact i64 %23, 4
  %25 = getelementptr inbounds i32, i32* %18, i64 %24
  %26 = call i32 @SetTeam(i32* %25, i8* %8)
  store i32 0, i32* %4, align 4
  br label %27

27:                                               ; preds = %15, %14
  %28 = load i8*, i8** %2, align 8
  call void @llvm.stackrestore(i8* %28)
  %29 = load i32, i32* %4, align 4
  switch i32 %29, label %31 [
    i32 0, label %30
    i32 1, label %30
  ]

30:                                               ; preds = %27, %27
  ret void

31:                                               ; preds = %27
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @trap_Argv(i32, i8*, i32) #2

declare dso_local i32* @ClientForString(i8*) #2

declare dso_local i32 @SetTeam(i32*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
