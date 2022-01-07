; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/server/extr_sv_client.c_SV_AuthorizeIpPacket.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/server/extr_sv_client.c_SV_AuthorizeIpPacket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }

@svs = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@.str = private unnamed_addr constant [49 x i8] c"SV_AuthorizeIpPacket: not from authorize server\0A\00", align 1
@MAX_CHALLENGES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"SV_AuthorizeIpPacket: challenge not found\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"demo\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"fs_restrict\00", align 1
@NS_SERVER = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"challengeResponse %i\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"print\0AServer is not a demo server\0A\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"accept\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.8 = private unnamed_addr constant [37 x i8] c"print\0AAwaiting CD key authorization\0A\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"print\0A%s\0A\00", align 1
@.str.10 = private unnamed_addr constant [36 x i8] c"print\0ASomeone is using this CD Key\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SV_AuthorizeIpPacket(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca [1024 x i8], align 16
  store i32 %0, i32* %2, align 4
  %8 = load i32, i32* %2, align 4
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @svs, i32 0, i32 2), align 4
  %10 = call i32 @NET_CompareBaseAdr(i32 %8, i32 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %1
  %13 = call i32 @Com_Printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  br label %170

14:                                               ; preds = %1
  %15 = call i8* @Cmd_Argv(i32 1)
  %16 = call i32 @atoi(i8* %15)
  store i32 %16, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %17

17:                                               ; preds = %32, %14
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @MAX_CHALLENGES, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %35

21:                                               ; preds = %17
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @svs, i32 0, i32 0), align 8
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %3, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %21
  br label %35

31:                                               ; preds = %21
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %4, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %4, align 4
  br label %17

35:                                               ; preds = %30, %17
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @MAX_CHALLENGES, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %35
  %40 = call i32 @Com_Printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  br label %170

41:                                               ; preds = %35
  %42 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @svs, i32 0, i32 1), align 8
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @svs, i32 0, i32 0), align 8
  %44 = load i32, i32* %4, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 2
  store i32 %42, i32* %47, align 4
  %48 = call i8* @Cmd_Argv(i32 2)
  store i8* %48, i8** %5, align 8
  %49 = call i8* @Cmd_Argv(i32 3)
  store i8* %49, i8** %6, align 8
  %50 = load i8*, i8** %5, align 8
  %51 = call i32 @Q_stricmp(i8* %50, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %85, label %53

53:                                               ; preds = %41
  %54 = call i64 @Cvar_VariableValue(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %71

56:                                               ; preds = %53
  %57 = load i32, i32* @NS_SERVER, align 4
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @svs, i32 0, i32 0), align 8
  %59 = load i32, i32* %4, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @svs, i32 0, i32 0), align 8
  %65 = load i32, i32* %4, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 (i32, i32, i8*, ...) @NET_OutOfBandPrint(i32 %57, i32 %63, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 %69)
  br label %170

71:                                               ; preds = %53
  %72 = load i32, i32* @NS_SERVER, align 4
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @svs, i32 0, i32 0), align 8
  %74 = load i32, i32* %4, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 (i32, i32, i8*, ...) @NET_OutOfBandPrint(i32 %72, i32 %78, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0))
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @svs, i32 0, i32 0), align 8
  %81 = load i32, i32* %4, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i64 %82
  %84 = call i32 @Com_Memset(%struct.TYPE_4__* %83, i32 0, i32 12)
  br label %170

85:                                               ; preds = %41
  %86 = load i8*, i8** %5, align 8
  %87 = call i32 @Q_stricmp(i8* %86, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %104, label %89

89:                                               ; preds = %85
  %90 = load i32, i32* @NS_SERVER, align 4
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @svs, i32 0, i32 0), align 8
  %92 = load i32, i32* %4, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @svs, i32 0, i32 0), align 8
  %98 = load i32, i32* %4, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 (i32, i32, i8*, ...) @NET_OutOfBandPrint(i32 %90, i32 %96, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 %102)
  br label %170

104:                                              ; preds = %85
  %105 = load i8*, i8** %5, align 8
  %106 = call i32 @Q_stricmp(i8* %105, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %139, label %108

108:                                              ; preds = %104
  %109 = load i8*, i8** %6, align 8
  %110 = icmp ne i8* %109, null
  br i1 %110, label %120, label %111

111:                                              ; preds = %108
  %112 = load i32, i32* @NS_SERVER, align 4
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @svs, i32 0, i32 0), align 8
  %114 = load i32, i32* %4, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = call i32 (i32, i32, i8*, ...) @NET_OutOfBandPrint(i32 %112, i32 %118, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i64 0, i64 0))
  br label %133

120:                                              ; preds = %108
  %121 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0
  %122 = load i8*, i8** %6, align 8
  %123 = call i32 @sprintf(i8* %121, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i8* %122)
  %124 = load i32, i32* @NS_SERVER, align 4
  %125 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @svs, i32 0, i32 0), align 8
  %126 = load i32, i32* %4, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0
  %132 = call i32 (i32, i32, i8*, ...) @NET_OutOfBandPrint(i32 %124, i32 %130, i8* %131)
  br label %133

133:                                              ; preds = %120, %111
  %134 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @svs, i32 0, i32 0), align 8
  %135 = load i32, i32* %4, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i64 %136
  %138 = call i32 @Com_Memset(%struct.TYPE_4__* %137, i32 0, i32 12)
  br label %170

139:                                              ; preds = %104
  %140 = load i8*, i8** %6, align 8
  %141 = icmp ne i8* %140, null
  br i1 %141, label %151, label %142

142:                                              ; preds = %139
  %143 = load i32, i32* @NS_SERVER, align 4
  %144 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @svs, i32 0, i32 0), align 8
  %145 = load i32, i32* %4, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i64 %146
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = call i32 (i32, i32, i8*, ...) @NET_OutOfBandPrint(i32 %143, i32 %149, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10, i64 0, i64 0))
  br label %164

151:                                              ; preds = %139
  %152 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0
  %153 = load i8*, i8** %6, align 8
  %154 = call i32 @sprintf(i8* %152, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i8* %153)
  %155 = load i32, i32* @NS_SERVER, align 4
  %156 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @svs, i32 0, i32 0), align 8
  %157 = load i32, i32* %4, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i64 %158
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0
  %163 = call i32 (i32, i32, i8*, ...) @NET_OutOfBandPrint(i32 %155, i32 %161, i8* %162)
  br label %164

164:                                              ; preds = %151, %142
  %165 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @svs, i32 0, i32 0), align 8
  %166 = load i32, i32* %4, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %165, i64 %167
  %169 = call i32 @Com_Memset(%struct.TYPE_4__* %168, i32 0, i32 12)
  br label %170

170:                                              ; preds = %164, %133, %89, %71, %56, %39, %12
  ret void
}

declare dso_local i32 @NET_CompareBaseAdr(i32, i32) #1

declare dso_local i32 @Com_Printf(i8*) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i8* @Cmd_Argv(i32) #1

declare dso_local i32 @Q_stricmp(i8*, i8*) #1

declare dso_local i64 @Cvar_VariableValue(i8*) #1

declare dso_local i32 @NET_OutOfBandPrint(i32, i32, i8*, ...) #1

declare dso_local i32 @Com_Memset(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
