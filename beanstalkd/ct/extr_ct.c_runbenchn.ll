; ModuleID = '/home/carl/AnghaBench/beanstalkd/ct/extr_ct.c_runbenchn.c'
source_filename = "/home/carl/AnghaBench/beanstalkd/ct/extr_ct.c_runbenchn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32 (i32)* }

@TmpDirPat = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"mkdtemp\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"fork\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"dup2\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"fclose\00", align 1
@curdir = common dso_local global i32 0, align 4
@bdur = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@bbytes = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"wait\00", align 1
@SIGKILL = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32)* @runbenchn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @runbenchn(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = call i32 (...) @tmpfd()
  store i32 %9, i32* %5, align 4
  %10 = call i32 (...) @tmpfd()
  store i32 %10, i32* %6, align 4
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @TmpDirPat, align 4
  %15 = call i32 @strcpy(i32 %13, i32 %14)
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = call i32* @mkdtemp(i32 %18)
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load i32, i32* @errno, align 4
  %23 = call i32 @die(i32 1, i32 %22, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  br label %24

24:                                               ; preds = %21, %2
  %25 = call i32 @fflush(i32* null)
  %26 = call i32 (...) @fork()
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load i32, i32* @errno, align 4
  %31 = call i32 @die(i32 1, i32 %30, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  br label %85

32:                                               ; preds = %24
  %33 = load i32, i32* %7, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %84, label %35

35:                                               ; preds = %32
  %36 = call i32 @setpgid(i32 0, i32 0)
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @dup2(i32 %37, i32 1)
  %39 = icmp eq i32 %38, -1
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load i32, i32* @errno, align 4
  %42 = call i32 @die(i32 3, i32 %41, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  br label %43

43:                                               ; preds = %40, %35
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @close(i32 %44)
  %46 = icmp eq i32 %45, -1
  br i1 %46, label %47, label %50

47:                                               ; preds = %43
  %48 = load i32, i32* @errno, align 4
  %49 = call i32 @die(i32 3, i32 %48, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  br label %50

50:                                               ; preds = %47, %43
  %51 = call i32 @dup2(i32 1, i32 2)
  %52 = icmp eq i32 %51, -1
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = load i32, i32* @errno, align 4
  %55 = call i32 @die(i32 3, i32 %54, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  br label %56

56:                                               ; preds = %53, %50
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* @curdir, align 4
  %60 = call i32 (...) @ctstarttimer()
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 4
  %63 = load i32 (i32)*, i32 (i32)** %62, align 8
  %64 = load i32, i32* %4, align 4
  %65 = call i32 %63(i32 %64)
  %66 = call i32 (...) @ctstoptimer()
  %67 = load i32, i32* %6, align 4
  %68 = call i32 @write(i32 %67, i32* @bdur, i32 4)
  %69 = sext i32 %68 to i64
  %70 = icmp ne i64 %69, 4
  br i1 %70, label %71, label %74

71:                                               ; preds = %56
  %72 = load i32, i32* @errno, align 4
  %73 = call i32 @die(i32 3, i32 %72, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  br label %74

74:                                               ; preds = %71, %56
  %75 = load i32, i32* %6, align 4
  %76 = call i32 @write(i32 %75, i32* @bbytes, i32 4)
  %77 = sext i32 %76 to i64
  %78 = icmp ne i64 %77, 4
  br i1 %78, label %79, label %82

79:                                               ; preds = %74
  %80 = load i32, i32* @errno, align 4
  %81 = call i32 @die(i32 3, i32 %80, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  br label %82

82:                                               ; preds = %79, %74
  %83 = call i32 @exit(i32 0) #3
  unreachable

84:                                               ; preds = %32
  br label %85

85:                                               ; preds = %84, %29
  %86 = load i32, i32* %7, align 4
  %87 = load i32, i32* %7, align 4
  %88 = call i32 @setpgid(i32 %86, i32 %87)
  %89 = load i32, i32* %7, align 4
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 0
  %92 = call i32 @waitpid(i32 %89, i32* %91, i32 0)
  store i32 %92, i32* %7, align 4
  %93 = load i32, i32* %7, align 4
  %94 = icmp eq i32 %93, -1
  br i1 %94, label %95, label %98

95:                                               ; preds = %85
  %96 = load i32, i32* @errno, align 4
  %97 = call i32 @die(i32 3, i32 %96, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  br label %98

98:                                               ; preds = %95, %85
  %99 = load i32, i32* %7, align 4
  %100 = load i32, i32* @SIGKILL, align 4
  %101 = call i32 @killpg(i32 %99, i32 %100)
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @rmtree(i32 %104)
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %118

110:                                              ; preds = %98
  %111 = call i32 @putchar(i8 signext 10)
  %112 = load i32, i32* %5, align 4
  %113 = load i32, i32* @SEEK_SET, align 4
  %114 = call i32 @lseek(i32 %112, i32 0, i32 %113)
  %115 = load i32, i32* @stdout, align 4
  %116 = load i32, i32* %5, align 4
  %117 = call i32 @copyfd(i32 %115, i32 %116)
  br label %145

118:                                              ; preds = %98
  %119 = load i32, i32* %6, align 4
  %120 = load i32, i32* @SEEK_SET, align 4
  %121 = call i32 @lseek(i32 %119, i32 0, i32 %120)
  %122 = load i32, i32* %6, align 4
  %123 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 2
  %125 = call i32 @read(i32 %122, i32* %124, i32 4)
  store i32 %125, i32* %8, align 4
  %126 = load i32, i32* %8, align 4
  %127 = sext i32 %126 to i64
  %128 = icmp ne i64 %127, 4
  br i1 %128, label %129, label %133

129:                                              ; preds = %118
  %130 = call i32 @perror(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %131 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 0, i32 0
  store i32 1, i32* %132, align 8
  br label %133

133:                                              ; preds = %129, %118
  %134 = load i32, i32* %6, align 4
  %135 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %135, i32 0, i32 1
  %137 = call i32 @read(i32 %134, i32* %136, i32 4)
  store i32 %137, i32* %8, align 4
  %138 = load i32, i32* %8, align 4
  %139 = sext i32 %138 to i64
  %140 = icmp ne i64 %139, 4
  br i1 %140, label %141, label %145

141:                                              ; preds = %133
  %142 = call i32 @perror(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %143 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %144 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %143, i32 0, i32 0
  store i32 1, i32* %144, align 8
  br label %145

145:                                              ; preds = %110, %141, %133
  ret void
}

declare dso_local i32 @tmpfd(...) #1

declare dso_local i32 @strcpy(i32, i32) #1

declare dso_local i32* @mkdtemp(i32) #1

declare dso_local i32 @die(i32, i32, i8*) #1

declare dso_local i32 @fflush(i32*) #1

declare dso_local i32 @fork(...) #1

declare dso_local i32 @setpgid(i32, i32) #1

declare dso_local i32 @dup2(i32, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @ctstarttimer(...) #1

declare dso_local i32 @ctstoptimer(...) #1

declare dso_local i32 @write(i32, i32*, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @waitpid(i32, i32*, i32) #1

declare dso_local i32 @killpg(i32, i32) #1

declare dso_local i32 @rmtree(i32) #1

declare dso_local i32 @putchar(i8 signext) #1

declare dso_local i32 @lseek(i32, i32, i32) #1

declare dso_local i32 @copyfd(i32, i32) #1

declare dso_local i32 @read(i32, i32*, i32) #1

declare dso_local i32 @perror(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
