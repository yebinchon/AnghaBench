; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/raspicam/extr_RaspiCommonSettings.c_raspicommonsettings_parse_cmdline.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/raspicam/extr_RaspiCommonSettings.c_raspicommonsettings_parse_cmdline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32 }

@cmdline_commands = common dso_local global i32 0, align 4
@cmdline_commands_size = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [73 x i8] c"Filename contains %% characters, but not %%d or %%%% - sorry, will fail\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @raspicommonsettings_parse_cmdline(%struct.TYPE_3__* %0, i8* %1, i8* %2, void (i8*)* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca void (i8*)*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store void (i8*)* %3, void (i8*)** %9, align 8
  store i32 0, i32* %11, align 4
  %16 = load i8*, i8** %7, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %159

19:                                               ; preds = %4
  %20 = load i32, i32* @cmdline_commands, align 4
  %21 = load i32, i32* @cmdline_commands_size, align 4
  %22 = load i8*, i8** %7, align 8
  %23 = call i32 @raspicli_get_command_id(i32 %20, i32 %21, i8* %22, i32* %12)
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %10, align 4
  %25 = icmp eq i32 %24, -1
  br i1 %25, label %35, label %26

26:                                               ; preds = %19
  %27 = load i32, i32* %10, align 4
  %28 = icmp ne i32 %27, -1
  br i1 %28, label %29, label %36

29:                                               ; preds = %26
  %30 = load i32, i32* %12, align 4
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %29
  %33 = load i8*, i8** %8, align 8
  %34 = icmp eq i8* %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %32, %19
  store i32 0, i32* %5, align 4
  br label %159

36:                                               ; preds = %32, %29, %26
  %37 = load i32, i32* %10, align 4
  switch i32 %37, label %157 [
    i32 132, label %38
    i32 128, label %44
    i32 133, label %52
    i32 131, label %60
    i32 129, label %135
    i32 135, label %138
    i32 130, label %146
    i32 134, label %154
  ]

38:                                               ; preds = %36
  %39 = call i32 (...) @get_app_name()
  %40 = call i32 @basename(i32 %39)
  %41 = load void (i8*)*, void (i8*)** %9, align 8
  %42 = call i32 @display_valid_parameters(i32 %40, void (i8*)* %41)
  %43 = call i32 @exit(i32 0) #3
  unreachable

44:                                               ; preds = %36
  %45 = load i8*, i8** %8, align 8
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 6
  %48 = call i32 @sscanf(i8* %45, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %47)
  %49 = icmp eq i32 %48, 1
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  store i32 2, i32* %11, align 4
  br label %51

51:                                               ; preds = %50, %44
  br label %157

52:                                               ; preds = %36
  %53 = load i8*, i8** %8, align 8
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 5
  %56 = call i32 @sscanf(i8* %53, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %55)
  %57 = icmp eq i32 %56, 1
  br i1 %57, label %58, label %59

58:                                               ; preds = %52
  store i32 2, i32* %11, align 4
  br label %59

59:                                               ; preds = %58, %52
  br label %157

60:                                               ; preds = %36
  %61 = load i8*, i8** %8, align 8
  %62 = call i32 @strlen(i8* %61)
  store i32 %62, i32* %13, align 4
  %63 = load i32, i32* %13, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %133

65:                                               ; preds = %60
  %66 = load i8*, i8** %8, align 8
  store i8* %66, i8** %14, align 8
  br label %67

67:                                               ; preds = %107, %65
  %68 = load i8*, i8** %14, align 8
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %67
  %73 = load i8*, i8** %14, align 8
  %74 = call i8* @strchr(i8* %73, i8 signext 37)
  store i8* %74, i8** %14, align 8
  %75 = icmp ne i8* %74, null
  br label %76

76:                                               ; preds = %72, %67
  %77 = phi i1 [ false, %67 ], [ %75, %72 ]
  br i1 %77, label %78, label %110

78:                                               ; preds = %76
  store i32 0, i32* %15, align 4
  %79 = load i8*, i8** %14, align 8
  %80 = getelementptr inbounds i8, i8* %79, i32 1
  store i8* %80, i8** %14, align 8
  br label %81

81:                                               ; preds = %86, %78
  %82 = load i8*, i8** %14, align 8
  %83 = load i8, i8* %82, align 1
  %84 = call i32 @isdigit(i8 signext %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %81
  %87 = load i8*, i8** %14, align 8
  %88 = getelementptr inbounds i8, i8* %87, i32 1
  store i8* %88, i8** %14, align 8
  %89 = load i32, i32* %15, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %15, align 4
  br label %81

91:                                               ; preds = %81
  %92 = load i8*, i8** %14, align 8
  %93 = load i8, i8* %92, align 1
  %94 = sext i8 %93 to i32
  %95 = icmp eq i32 %94, 37
  br i1 %95, label %96, label %99

96:                                               ; preds = %91
  %97 = load i32, i32* %15, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %107

99:                                               ; preds = %96, %91
  %100 = load i8*, i8** %14, align 8
  %101 = load i8, i8* %100, align 1
  %102 = sext i8 %101 to i32
  %103 = icmp eq i32 %102, 100
  br i1 %103, label %107, label %104

104:                                              ; preds = %99
  store i32 0, i32* %11, align 4
  %105 = load i32, i32* @stderr, align 4
  %106 = call i32 @fprintf(i32 %105, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.1, i64 0, i64 0))
  br label %110

107:                                              ; preds = %99, %96
  %108 = load i8*, i8** %14, align 8
  %109 = getelementptr inbounds i8, i8* %108, i32 1
  store i8* %109, i8** %14, align 8
  br label %67

110:                                              ; preds = %104, %76
  %111 = load i32, i32* %13, align 4
  %112 = add nsw i32 %111, 10
  %113 = call i32 @malloc(i32 %112)
  %114 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 4
  store i32 %113, i32* %115, align 4
  %116 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 4
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @vcos_assert(i32 %118)
  %120 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 4
  %122 = load i32, i32* %121, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %132

124:                                              ; preds = %110
  %125 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 4
  %127 = load i32, i32* %126, align 4
  %128 = load i8*, i8** %8, align 8
  %129 = load i32, i32* %13, align 4
  %130 = add nsw i32 %129, 1
  %131 = call i32 @strncpy(i32 %127, i8* %128, i32 %130)
  br label %132

132:                                              ; preds = %124, %110
  store i32 2, i32* %11, align 4
  br label %134

133:                                              ; preds = %60
  store i32 0, i32* %11, align 4
  br label %134

134:                                              ; preds = %133, %132
  br label %157

135:                                              ; preds = %36
  %136 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 0
  store i32 1, i32* %137, align 4
  store i32 1, i32* %11, align 4
  br label %157

138:                                              ; preds = %36
  %139 = load i8*, i8** %8, align 8
  %140 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %140, i32 0, i32 3
  %142 = call i32 @sscanf(i8* %139, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %141)
  %143 = icmp eq i32 %142, 1
  br i1 %143, label %144, label %145

144:                                              ; preds = %138
  store i32 2, i32* %11, align 4
  br label %145

145:                                              ; preds = %144, %138
  br label %157

146:                                              ; preds = %36
  %147 = load i8*, i8** %8, align 8
  %148 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %149 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %148, i32 0, i32 2
  %150 = call i32 @sscanf(i8* %147, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %149)
  %151 = icmp eq i32 %150, 1
  br i1 %151, label %152, label %153

152:                                              ; preds = %146
  store i32 2, i32* %11, align 4
  br label %153

153:                                              ; preds = %152, %146
  br label %157

154:                                              ; preds = %36
  %155 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %156 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %155, i32 0, i32 1
  store i32 1, i32* %156, align 4
  store i32 1, i32* %11, align 4
  br label %157

157:                                              ; preds = %36, %154, %153, %145, %135, %134, %59, %51
  %158 = load i32, i32* %11, align 4
  store i32 %158, i32* %5, align 4
  br label %159

159:                                              ; preds = %157, %35, %18
  %160 = load i32, i32* %5, align 4
  ret i32 %160
}

declare dso_local i32 @raspicli_get_command_id(i32, i32, i8*, i32*) #1

declare dso_local i32 @display_valid_parameters(i32, void (i8*)*) #1

declare dso_local i32 @basename(i32) #1

declare dso_local i32 @get_app_name(...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @sscanf(i8*, i8*, i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @isdigit(i8 signext) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @malloc(i32) #1

declare dso_local i32 @vcos_assert(i32) #1

declare dso_local i32 @strncpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
