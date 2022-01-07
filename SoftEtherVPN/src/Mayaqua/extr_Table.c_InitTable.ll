; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Table.c_InitTable.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Table.c_InitTable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32*, i32 }
%struct.TYPE_8__ = type { i32 }

@MAX_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [185 x i8] c"Fatal Error: The file \22hamcore.se2\22 is missing or broken.\0D\0APlease check hamcore.se2.\0D\0A\0D\0A(First, reboot the computer. If this problem occurs again, please reinstall VPN software files.)\00", align 1
@current_lang = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@current_os_lang = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"|strtable_%s.stb\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @InitTable() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = load i32, i32* @MAX_SIZE, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %2, align 8
  %11 = alloca i8, i64 %9, align 16
  store i64 %9, i64* %3, align 8
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %4, align 8
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %5, align 8
  %12 = load i32, i32* @MAX_SIZE, align 4
  %13 = zext i32 %12 to i64
  %14 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %6, align 8
  %15 = call i64 (...) @MayaquaIsMinimalMode()
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %0
  store i32 1, i32* %7, align 4
  br label %62

18:                                               ; preds = %0
  %19 = call i32* (...) @LoadLangList()
  store i32* %19, i32** %1, align 8
  %20 = load i32*, i32** %1, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %18
  br label %23

23:                                               ; preds = %58, %43, %22
  %24 = call i32 @Alert(i8* getelementptr inbounds ([185 x i8], [185 x i8]* @.str, i64 0, i64 0), i32* null)
  %25 = call i32 @exit(i32 -1) #4
  unreachable

26:                                               ; preds = %18
  %27 = trunc i64 %9 to i32
  %28 = call i64 @LoadLangConfigCurrentDir(i8* %11, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = load i32*, i32** %1, align 8
  %32 = call %struct.TYPE_8__* @GetBestLangByName(i32* %31, i8* %11)
  store %struct.TYPE_8__* %32, %struct.TYPE_8__** %4, align 8
  br label %33

33:                                               ; preds = %30, %26
  %34 = load i32*, i32** %1, align 8
  %35 = call %struct.TYPE_8__* @GetBestLangForCurrentEnvironment(i32* %34)
  store %struct.TYPE_8__* %35, %struct.TYPE_8__** %5, align 8
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %37 = icmp eq %struct.TYPE_8__* %36, null
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  store %struct.TYPE_8__* %39, %struct.TYPE_8__** %4, align 8
  br label %40

40:                                               ; preds = %38, %33
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %42 = icmp eq %struct.TYPE_8__* %41, null
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  br label %23

44:                                               ; preds = %40
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @SaveLangConfigCurrentDir(i32 %47)
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %50 = call i32 @Copy(%struct.TYPE_9__* @current_lang, %struct.TYPE_8__* %49, i32 4)
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %52 = call i32 @Copy(%struct.TYPE_9__* @current_os_lang, %struct.TYPE_8__* %51, i32 4)
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @current_lang, i32 0, i32 1), align 8
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @current_lang, i32 0, i32 2), align 8
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @current_os_lang, i32 0, i32 1), align 8
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @current_os_lang, i32 0, i32 2), align 8
  %53 = trunc i64 %13 to i32
  %54 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @current_lang, i32 0, i32 0), align 8
  %55 = call i32 @Format(i8* %14, i32 %53, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %54)
  %56 = call i32 @LoadTable(i8* %14)
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %44
  br label %23

59:                                               ; preds = %44
  %60 = load i32*, i32** %1, align 8
  %61 = call i32 @FreeLangList(i32* %60)
  store i32 0, i32* %7, align 4
  br label %62

62:                                               ; preds = %59, %17
  %63 = load i8*, i8** %2, align 8
  call void @llvm.stackrestore(i8* %63)
  %64 = load i32, i32* %7, align 4
  switch i32 %64, label %66 [
    i32 0, label %65
    i32 1, label %65
  ]

65:                                               ; preds = %62, %62
  ret void

66:                                               ; preds = %62
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @MayaquaIsMinimalMode(...) #2

declare dso_local i32* @LoadLangList(...) #2

declare dso_local i32 @Alert(i8*, i32*) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local i64 @LoadLangConfigCurrentDir(i8*, i32) #2

declare dso_local %struct.TYPE_8__* @GetBestLangByName(i32*, i8*) #2

declare dso_local %struct.TYPE_8__* @GetBestLangForCurrentEnvironment(i32*) #2

declare dso_local i32 @SaveLangConfigCurrentDir(i32) #2

declare dso_local i32 @Copy(%struct.TYPE_9__*, %struct.TYPE_8__*, i32) #2

declare dso_local i32 @Format(i8*, i32, i8*, i32) #2

declare dso_local i32 @LoadTable(i8*) #2

declare dso_local i32 @FreeLangList(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
