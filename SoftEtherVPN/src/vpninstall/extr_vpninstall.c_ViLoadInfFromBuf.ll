; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/vpninstall/extr_vpninstall.c_ViLoadInfFromBuf.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/vpninstall/extr_vpninstall.c_ViLoadInfFromBuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, %struct.TYPE_8__, i32, i32 }
%struct.TYPE_8__ = type { i64, i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i8** }

@.str = private unnamed_addr constant [3 x i8] c" \09\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"#\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"//\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"VpnInstallBuild\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"NormalMode\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"VpnSettingPath\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"VpnClientBuild\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"VpnClientPath\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"vpncmgr_x64.exe\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"vpncmgr.exe\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ViLoadInfFromBuf(%struct.TYPE_9__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i32* %1, i32** %5, align 8
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %12 = icmp eq %struct.TYPE_9__* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32*, i32** %5, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %13, %2
  store i32 0, i32* %3, align 4
  br label %161

17:                                               ; preds = %13
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %19 = call i32 @Zero(%struct.TYPE_9__* %18, i32 40)
  %20 = load i32*, i32** %5, align 8
  %21 = call i32 @SeekBuf(i32* %20, i32 0, i32 0)
  br label %22

22:                                               ; preds = %17, %124
  %23 = load i32*, i32** %5, align 8
  %24 = call i8* @CfgReadNextLine(i32* %23)
  store i8* %24, i8** %7, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = icmp eq i8* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  br label %127

28:                                               ; preds = %22
  %29 = load i8*, i8** %7, align 8
  %30 = call %struct.TYPE_10__* @ParseToken(i8* %29, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_10__* %30, %struct.TYPE_10__** %8, align 8
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %32 = icmp ne %struct.TYPE_10__* %31, null
  br i1 %32, label %33, label %124

33:                                               ; preds = %28
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp sge i32 %36, 2
  br i1 %37, label %38, label %121

38:                                               ; preds = %33
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 1
  %41 = load i8**, i8*** %40, align 8
  %42 = getelementptr inbounds i8*, i8** %41, i64 0
  %43 = load i8*, i8** %42, align 8
  %44 = call i32 @StartWith(i8* %43, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %54, label %46

46:                                               ; preds = %38
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 1
  %49 = load i8**, i8*** %48, align 8
  %50 = getelementptr inbounds i8*, i8** %49, i64 0
  %51 = load i8*, i8** %50, align 8
  %52 = call i32 @StartWith(i8* %51, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %120

54:                                               ; preds = %46, %38
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 1
  %57 = load i8**, i8*** %56, align 8
  %58 = getelementptr inbounds i8*, i8** %57, i64 0
  %59 = load i8*, i8** %58, align 8
  store i8* %59, i8** %9, align 8
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 1
  %62 = load i8**, i8*** %61, align 8
  %63 = getelementptr inbounds i8*, i8** %62, i64 1
  %64 = load i8*, i8** %63, align 8
  store i8* %64, i8** %10, align 8
  %65 = load i8*, i8** %9, align 8
  %66 = call i64 @StrCmpi(i8* %65, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %54
  %69 = load i8*, i8** %10, align 8
  %70 = call i8* @ToInt(i8* %69)
  %71 = ptrtoint i8* %70 to i64
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 0
  store i64 %71, i64* %73, align 8
  br label %119

74:                                               ; preds = %54
  %75 = load i8*, i8** %9, align 8
  %76 = call i64 @StrCmpi(i8* %75, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %74
  %79 = load i8*, i8** %10, align 8
  %80 = call i32 @ToBool(i8* %79)
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 3
  store i32 %80, i32* %82, align 4
  br label %118

83:                                               ; preds = %74
  %84 = load i8*, i8** %9, align 8
  %85 = call i64 @StrCmpi(i8* %84, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %83
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = load i8*, i8** %10, align 8
  %92 = call i32 @StrCpy(i32 %90, i32 4, i8* %91)
  br label %117

93:                                               ; preds = %83
  %94 = load i8*, i8** %9, align 8
  %95 = call i64 @StrCmpi(i8* %94, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0))
  %96 = icmp eq i64 %95, 0
  br i1 %96, label %97, label %104

97:                                               ; preds = %93
  %98 = load i8*, i8** %10, align 8
  %99 = call i8* @ToInt(i8* %98)
  %100 = ptrtoint i8* %99 to i64
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 0
  store i64 %100, i64* %103, align 8
  br label %116

104:                                              ; preds = %93
  %105 = load i8*, i8** %9, align 8
  %106 = call i64 @StrCmpi(i8* %105, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0))
  %107 = icmp eq i64 %106, 0
  br i1 %107, label %108, label %115

108:                                              ; preds = %104
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  %113 = load i8*, i8** %10, align 8
  %114 = call i32 @StrCpy(i32 %112, i32 4, i8* %113)
  br label %115

115:                                              ; preds = %108, %104
  br label %116

116:                                              ; preds = %115, %97
  br label %117

117:                                              ; preds = %116, %87
  br label %118

118:                                              ; preds = %117, %78
  br label %119

119:                                              ; preds = %118, %68
  br label %120

120:                                              ; preds = %119, %46
  br label %121

121:                                              ; preds = %120, %33
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %123 = call i32 @FreeToken(%struct.TYPE_10__* %122)
  br label %124

124:                                              ; preds = %121, %28
  %125 = load i8*, i8** %7, align 8
  %126 = call i32 @Free(i8* %125)
  br label %22

127:                                              ; preds = %27
  store i32 0, i32* %6, align 4
  %128 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 8
  %132 = call i64 (...) @MsIsX64()
  %133 = icmp ne i64 %132, 0
  %134 = zext i1 %133 to i64
  %135 = select i1 %133, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0)
  %136 = call i32 @StrCpy(i32 %131, i32 4, i8* %135)
  %137 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %159

141:                                              ; preds = %127
  %142 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %143 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %142, i32 0, i32 1
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %158

147:                                              ; preds = %141
  %148 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %149 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @IsEmptyStr(i32 %151)
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %154, label %158

154:                                              ; preds = %147
  %155 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %156 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %155, i32 0, i32 1
  %157 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %156, i32 0, i32 1
  store i32 1, i32* %157, align 8
  store i32 1, i32* %6, align 4
  br label %158

158:                                              ; preds = %154, %147, %141
  br label %159

159:                                              ; preds = %158, %127
  %160 = load i32, i32* %6, align 4
  store i32 %160, i32* %3, align 4
  br label %161

161:                                              ; preds = %159, %16
  %162 = load i32, i32* %3, align 4
  ret i32 %162
}

declare dso_local i32 @Zero(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @SeekBuf(i32*, i32, i32) #1

declare dso_local i8* @CfgReadNextLine(i32*) #1

declare dso_local %struct.TYPE_10__* @ParseToken(i8*, i8*) #1

declare dso_local i32 @StartWith(i8*, i8*) #1

declare dso_local i64 @StrCmpi(i8*, i8*) #1

declare dso_local i8* @ToInt(i8*) #1

declare dso_local i32 @ToBool(i8*) #1

declare dso_local i32 @StrCpy(i32, i32, i8*) #1

declare dso_local i32 @FreeToken(%struct.TYPE_10__*) #1

declare dso_local i32 @Free(i8*) #1

declare dso_local i64 @MsIsX64(...) #1

declare dso_local i32 @IsEmptyStr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
