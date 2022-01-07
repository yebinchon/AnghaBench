; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_movie.c_DoMovie.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_movie.c_DoMovie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32, i64, i32 }
%struct.TYPE_5__ = type { i32* }
%struct.TYPE_4__ = type { i32* }

@Movie = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@LagFrameFlag = common dso_local global i32 0, align 4
@Recording = common dso_local global i64 0, align 8
@PORTDATA1 = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@PORTDATA2 = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@Playback = common dso_local global i64 0, align 8
@headersize = common dso_local global i32 0, align 4
@framelength = common dso_local global i32 0, align 4
@PlaybackFileOpened = common dso_local global i64 0, align 8
@Stopped = common dso_local global i8* null, align 8
@MovieStatus = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Playback Stopped\00", align 1
@RecordingFileOpened = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"Recording Stopped\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @DoMovie() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  store i64 0, i64* %2, align 8
  %3 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @Movie, i32 0, i32 0), align 8
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  br label %122

6:                                                ; preds = %0
  %7 = call i32 (...) @IncrementLagAndFrameCounter()
  store i32 1, i32* @LagFrameFlag, align 4
  %8 = call i32 (...) @SetInputDisplayCharacters()
  %9 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @Movie, i32 0, i32 0), align 8
  %10 = load i64, i64* @Recording, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %41

12:                                               ; preds = %6
  store i32 0, i32* %1, align 4
  br label %13

13:                                               ; preds = %23, %12
  %14 = load i32, i32* %1, align 4
  %15 = icmp slt i32 %14, 8
  br i1 %15, label %16, label %26

16:                                               ; preds = %13
  %17 = load i32*, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @PORTDATA1, i32 0, i32 0), align 8
  %18 = load i32, i32* %1, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @Movie, i32 0, i32 3), align 8
  %22 = call i32 @fwrite(i32* %20, i32 1, i32 1, i32 %21)
  br label %23

23:                                               ; preds = %16
  %24 = load i32, i32* %1, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %1, align 4
  br label %13

26:                                               ; preds = %13
  store i32 0, i32* %1, align 4
  br label %27

27:                                               ; preds = %37, %26
  %28 = load i32, i32* %1, align 4
  %29 = icmp slt i32 %28, 8
  br i1 %29, label %30, label %40

30:                                               ; preds = %27
  %31 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @PORTDATA2, i32 0, i32 0), align 8
  %32 = load i32, i32* %1, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @Movie, i32 0, i32 3), align 8
  %36 = call i32 @fwrite(i32* %34, i32 1, i32 1, i32 %35)
  br label %37

37:                                               ; preds = %30
  %38 = load i32, i32* %1, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %1, align 4
  br label %27

40:                                               ; preds = %27
  br label %41

41:                                               ; preds = %40, %6
  %42 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @Movie, i32 0, i32 0), align 8
  %43 = load i64, i64* @Playback, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %91

45:                                               ; preds = %41
  store i32 0, i32* %1, align 4
  br label %46

46:                                               ; preds = %56, %45
  %47 = load i32, i32* %1, align 4
  %48 = icmp slt i32 %47, 8
  br i1 %48, label %49, label %59

49:                                               ; preds = %46
  %50 = load i32*, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @PORTDATA1, i32 0, i32 0), align 8
  %51 = load i32, i32* %1, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @Movie, i32 0, i32 3), align 8
  %55 = call i64 @fread(i32* %53, i32 1, i32 1, i32 %54)
  store i64 %55, i64* %2, align 8
  br label %56

56:                                               ; preds = %49
  %57 = load i32, i32* %1, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %1, align 4
  br label %46

59:                                               ; preds = %46
  store i32 0, i32* %1, align 4
  br label %60

60:                                               ; preds = %70, %59
  %61 = load i32, i32* %1, align 4
  %62 = icmp slt i32 %61, 8
  br i1 %62, label %63, label %73

63:                                               ; preds = %60
  %64 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @PORTDATA2, i32 0, i32 0), align 8
  %65 = load i32, i32* %1, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @Movie, i32 0, i32 3), align 8
  %69 = call i64 @fread(i32* %67, i32 1, i32 1, i32 %68)
  store i64 %69, i64* %2, align 8
  br label %70

70:                                               ; preds = %63
  %71 = load i32, i32* %1, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %1, align 4
  br label %60

73:                                               ; preds = %60
  %74 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @Movie, i32 0, i32 3), align 8
  %75 = call i32 @ftell(i32 %74)
  %76 = load i32, i32* @headersize, align 4
  %77 = sub nsw i32 %75, %76
  %78 = load i32, i32* @framelength, align 4
  %79 = sdiv i32 %77, %78
  %80 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @Movie, i32 0, i32 1), align 8
  %81 = icmp sge i32 %79, %80
  br i1 %81, label %82, label %90

82:                                               ; preds = %73
  %83 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @Movie, i32 0, i32 3), align 8
  %84 = call i32 @fclose(i32 %83)
  store i64 0, i64* @PlaybackFileOpened, align 8
  %85 = load i8*, i8** @Stopped, align 8
  %86 = ptrtoint i8* %85 to i64
  store i64 %86, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @Movie, i32 0, i32 0), align 8
  %87 = call i32 (...) @ClearInput()
  %88 = load i32, i32* @MovieStatus, align 4
  %89 = call i32 @strcpy(i32 %88, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %90

90:                                               ; preds = %82, %73
  br label %91

91:                                               ; preds = %90, %41
  %92 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @Movie, i32 0, i32 0), align 8
  %93 = load i64, i64* @Recording, align 8
  %94 = icmp ne i64 %92, %93
  br i1 %94, label %95, label %105

95:                                               ; preds = %91
  %96 = load i64, i64* @RecordingFileOpened, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %105

98:                                               ; preds = %95
  %99 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @Movie, i32 0, i32 3), align 8
  %100 = call i32 @fclose(i32 %99)
  store i64 0, i64* @RecordingFileOpened, align 8
  %101 = load i8*, i8** @Stopped, align 8
  %102 = ptrtoint i8* %101 to i64
  store i64 %102, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @Movie, i32 0, i32 0), align 8
  %103 = load i32, i32* @MovieStatus, align 4
  %104 = call i32 @strcpy(i32 %103, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %105

105:                                              ; preds = %98, %95, %91
  %106 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @Movie, i32 0, i32 0), align 8
  %107 = load i64, i64* @Playback, align 8
  %108 = icmp ne i64 %106, %107
  br i1 %108, label %109, label %122

109:                                              ; preds = %105
  %110 = load i64, i64* @PlaybackFileOpened, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %122

112:                                              ; preds = %109
  %113 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @Movie, i32 0, i32 2), align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %122

115:                                              ; preds = %112
  %116 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @Movie, i32 0, i32 3), align 8
  %117 = call i32 @fclose(i32 %116)
  store i64 0, i64* @PlaybackFileOpened, align 8
  %118 = load i8*, i8** @Stopped, align 8
  %119 = ptrtoint i8* %118 to i64
  store i64 %119, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @Movie, i32 0, i32 0), align 8
  %120 = load i32, i32* @MovieStatus, align 4
  %121 = call i32 @strcpy(i32 %120, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %122

122:                                              ; preds = %5, %115, %112, %109, %105
  ret void
}

declare dso_local i32 @IncrementLagAndFrameCounter(...) #1

declare dso_local i32 @SetInputDisplayCharacters(...) #1

declare dso_local i32 @fwrite(i32*, i32, i32, i32) #1

declare dso_local i64 @fread(i32*, i32, i32, i32) #1

declare dso_local i32 @ftell(i32) #1

declare dso_local i32 @fclose(i32) #1

declare dso_local i32 @ClearInput(...) #1

declare dso_local i32 @strcpy(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
