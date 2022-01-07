; ModuleID = '/home/carl/AnghaBench/curl/tests/server/extr_socksd.c_getconfig.c'
source_filename = "/home/carl/AnghaBench/curl/tests/server/extr_socksd.c_getconfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@configfile = common dso_local global i32 0, align 4
@FOPEN_READTEXT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"parse config file\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"%31s %31s\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@config = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str.3 = private unnamed_addr constant [17 x i8] c"version [%d] set\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"nmethods_min\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"nmethods_min [%d] set\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"nmethods_max\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"nmethods_max [%d] set\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"backend\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"backend [%s] set\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"backendport\00", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c"backendport [%d] set\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"user\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"user [%s] set\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"password\00", align 1
@.str.15 = private unnamed_addr constant [18 x i8] c"password [%s] set\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"method\00", align 1
@.str.17 = private unnamed_addr constant [16 x i8] c"method [%d] set\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"response\00", align 1
@.str.19 = private unnamed_addr constant [18 x i8] c"response [%d] set\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @getconfig to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @getconfig() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca [512 x i8], align 16
  %3 = alloca [32 x i8], align 16
  %4 = alloca [32 x i8], align 16
  %5 = load i32, i32* @configfile, align 4
  %6 = load i32, i32* @FOPEN_READTEXT, align 4
  %7 = call i32* @fopen(i32 %5, i32 %6)
  store i32* %7, i32** %1, align 8
  %8 = call i32 (...) @resetdefaults()
  %9 = load i32*, i32** %1, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %121

11:                                               ; preds = %0
  %12 = call i32 (i8*, ...) @logmsg(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %13

13:                                               ; preds = %117, %11
  %14 = getelementptr inbounds [512 x i8], [512 x i8]* %2, i64 0, i64 0
  %15 = load i32*, i32** %1, align 8
  %16 = call i64 @fgets(i8* %14, i32 512, i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %118

18:                                               ; preds = %13
  %19 = getelementptr inbounds [512 x i8], [512 x i8]* %2, i64 0, i64 0
  %20 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %21 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0
  %22 = call i32 @sscanf(i8* %19, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* %20, i8* %21)
  %23 = icmp eq i32 2, %22
  br i1 %23, label %24, label %117

24:                                               ; preds = %18
  %25 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %26 = call i32 @strcmp(i8* %25, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0
  %30 = call i8* @byteval(i8* %29)
  store i8* %30, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 8), align 8
  %31 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 8), align 8
  %32 = call i32 (i8*, ...) @logmsg(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i8* %31)
  br label %116

33:                                               ; preds = %24
  %34 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %35 = call i32 @strcmp(i8* %34, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0
  %39 = call i8* @byteval(i8* %38)
  store i8* %39, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 7), align 8
  %40 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 7), align 8
  %41 = call i32 (i8*, ...) @logmsg(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i8* %40)
  br label %115

42:                                               ; preds = %33
  %43 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %44 = call i32 @strcmp(i8* %43, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0))
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %51, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0
  %48 = call i8* @byteval(i8* %47)
  store i8* %48, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 6), align 8
  %49 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 6), align 8
  %50 = call i32 (i8*, ...) @logmsg(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i8* %49)
  br label %114

51:                                               ; preds = %42
  %52 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %53 = call i32 @strcmp(i8* %52, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0))
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %61, label %55

55:                                               ; preds = %51
  %56 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 5), align 8
  %57 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0
  %58 = call i32 @strcpy(i8* %56, i8* %57)
  %59 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 5), align 8
  %60 = call i32 (i8*, ...) @logmsg(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0), i8* %59)
  br label %113

61:                                               ; preds = %51
  %62 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %63 = call i32 @strcmp(i8* %62, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0))
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %70, label %65

65:                                               ; preds = %61
  %66 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0
  %67 = call i8* @shortval(i8* %66)
  store i8* %67, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 4), align 8
  %68 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 4), align 8
  %69 = call i32 (i8*, ...) @logmsg(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), i8* %68)
  br label %112

70:                                               ; preds = %61
  %71 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %72 = call i32 @strcmp(i8* %71, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0))
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %80, label %74

74:                                               ; preds = %70
  %75 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 3), align 8
  %76 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0
  %77 = call i32 @strcpy(i8* %75, i8* %76)
  %78 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 3), align 8
  %79 = call i32 (i8*, ...) @logmsg(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0), i8* %78)
  br label %111

80:                                               ; preds = %70
  %81 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %82 = call i32 @strcmp(i8* %81, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0))
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %90, label %84

84:                                               ; preds = %80
  %85 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 2), align 8
  %86 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0
  %87 = call i32 @strcpy(i8* %85, i8* %86)
  %88 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 2), align 8
  %89 = call i32 (i8*, ...) @logmsg(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i64 0, i64 0), i8* %88)
  br label %110

90:                                               ; preds = %80
  %91 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %92 = call i32 @strcmp(i8* %91, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i64 0, i64 0))
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %99, label %94

94:                                               ; preds = %90
  %95 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0
  %96 = call i8* @byteval(i8* %95)
  store i8* %96, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 1), align 8
  %97 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 1), align 8
  %98 = call i32 (i8*, ...) @logmsg(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i64 0, i64 0), i8* %97)
  br label %109

99:                                               ; preds = %90
  %100 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %101 = call i32 @strcmp(i8* %100, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i64 0, i64 0))
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %108, label %103

103:                                              ; preds = %99
  %104 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0
  %105 = call i8* @byteval(i8* %104)
  store i8* %105, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 0), align 8
  %106 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 0), align 8
  %107 = call i32 (i8*, ...) @logmsg(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.19, i64 0, i64 0), i8* %106)
  br label %108

108:                                              ; preds = %103, %99
  br label %109

109:                                              ; preds = %108, %94
  br label %110

110:                                              ; preds = %109, %84
  br label %111

111:                                              ; preds = %110, %74
  br label %112

112:                                              ; preds = %111, %65
  br label %113

113:                                              ; preds = %112, %55
  br label %114

114:                                              ; preds = %113, %46
  br label %115

115:                                              ; preds = %114, %37
  br label %116

116:                                              ; preds = %115, %28
  br label %117

117:                                              ; preds = %116, %18
  br label %13

118:                                              ; preds = %13
  %119 = load i32*, i32** %1, align 8
  %120 = call i32 @fclose(i32* %119)
  br label %121

121:                                              ; preds = %118, %0
  ret void
}

declare dso_local i32* @fopen(i32, i32) #1

declare dso_local i32 @resetdefaults(...) #1

declare dso_local i32 @logmsg(i8*, ...) #1

declare dso_local i64 @fgets(i8*, i32, i32*) #1

declare dso_local i32 @sscanf(i8*, i8*, i8*, i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i8* @byteval(i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i8* @shortval(i8*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
