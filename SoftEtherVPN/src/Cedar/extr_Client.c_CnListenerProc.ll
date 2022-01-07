; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Client.c_CnListenerProc.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Client.c_CnListenerProc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { %struct.TYPE_17__, i32 }
%struct.TYPE_17__ = type { i32* }

@MAX_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"function\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"status_printer\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"connecterror_dialog\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"msg_dialog\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"nicinfo\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"password_dialog\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"secure_sign\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"check_cert\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"exit\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"get_session_id\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"exec_driver_installer\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"release_socket\00", align 1
@APPID_CM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CnListenerProc(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %12, %struct.TYPE_18__** %5, align 8
  %13 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %14 = icmp eq %struct.TYPE_18__* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32*, i32** %3, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %15, %2
  br label %149

19:                                               ; preds = %15
  %20 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_19__*, %struct.TYPE_19__** %21, align 8
  store %struct.TYPE_19__* %22, %struct.TYPE_19__** %6, align 8
  %23 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @AddRef(i32 %25)
  %27 = load i32*, i32** %3, align 8
  %28 = call i32 @NoticeThreadInit(i32* %27)
  %29 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp eq i32 %34, 127
  br i1 %35, label %36, label %144

36:                                               ; preds = %19
  %37 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %38 = call i32* @RecvPack(%struct.TYPE_19__* %37)
  store i32* %38, i32** %7, align 8
  %39 = load i32*, i32** %7, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %143

41:                                               ; preds = %36
  %42 = load i32, i32* @MAX_SIZE, align 4
  %43 = zext i32 %42 to i64
  %44 = call i8* @llvm.stacksave()
  store i8* %44, i8** %8, align 8
  %45 = alloca i8, i64 %43, align 16
  store i64 %43, i64* %9, align 8
  %46 = load i32*, i32** %7, align 8
  %47 = trunc i64 %43 to i32
  %48 = call i64 @PackGetStr(i32* %46, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %45, i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %139

50:                                               ; preds = %41
  %51 = call i64 @StrCmpi(i8* %45, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %50
  %54 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %55 = load i32*, i32** %7, align 8
  %56 = call i32 @CnStatusPrinter(%struct.TYPE_19__* %54, i32* %55)
  br label %138

57:                                               ; preds = %50
  %58 = call i64 @StrCmpi(i8* %45, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %57
  %61 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %62 = load i32*, i32** %7, align 8
  %63 = call i32 @CnConnectErrorDlg(%struct.TYPE_19__* %61, i32* %62)
  br label %137

64:                                               ; preds = %57
  %65 = call i64 @StrCmpi(i8* %45, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %64
  %68 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %69 = load i32*, i32** %7, align 8
  %70 = call i32 @CnMsgDlg(%struct.TYPE_19__* %68, i32* %69)
  br label %136

71:                                               ; preds = %64
  %72 = call i64 @StrCmpi(i8* %45, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %71
  %75 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %76 = load i32*, i32** %7, align 8
  %77 = call i32 @CnNicInfo(%struct.TYPE_19__* %75, i32* %76)
  br label %135

78:                                               ; preds = %71
  %79 = call i64 @StrCmpi(i8* %45, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %78
  %82 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %83 = load i32*, i32** %7, align 8
  %84 = call i32 @CnPasswordDlg(%struct.TYPE_19__* %82, i32* %83)
  br label %134

85:                                               ; preds = %78
  %86 = call i64 @StrCmpi(i8* %45, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0))
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %85
  %89 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %90 = load i32*, i32** %7, align 8
  %91 = call i32 @CnSecureSign(%struct.TYPE_19__* %89, i32* %90)
  br label %133

92:                                               ; preds = %85
  %93 = call i64 @StrCmpi(i8* %45, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0))
  %94 = icmp eq i64 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %92
  %96 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %97 = load i32*, i32** %7, align 8
  %98 = call i32 @CnCheckCert(%struct.TYPE_19__* %96, i32* %97)
  br label %132

99:                                               ; preds = %92
  %100 = call i64 @StrCmpi(i8* %45, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  %101 = icmp eq i64 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %99
  %103 = call i32 @_exit(i32 0) #4
  unreachable

104:                                              ; preds = %99
  %105 = call i64 @StrCmpi(i8* %45, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0))
  %106 = icmp eq i64 %105, 0
  br i1 %106, label %107, label %114

107:                                              ; preds = %104
  %108 = call i32* (...) @NewPack()
  store i32* %108, i32** %10, align 8
  %109 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %110 = load i32*, i32** %10, align 8
  %111 = call i32 @SendPack(%struct.TYPE_19__* %109, i32* %110)
  %112 = load i32*, i32** %10, align 8
  %113 = call i32 @FreePack(i32* %112)
  br label %130

114:                                              ; preds = %104
  %115 = call i64 @StrCmpi(i8* %45, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i64 0, i64 0))
  %116 = icmp eq i64 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %114
  %118 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %119 = load i32*, i32** %7, align 8
  %120 = call i32 @CnExecDriverInstaller(%struct.TYPE_19__* %118, i32* %119)
  br label %129

121:                                              ; preds = %114
  %122 = call i64 @StrCmpi(i8* %45, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0))
  %123 = icmp eq i64 %122, 0
  br i1 %123, label %124, label %128

124:                                              ; preds = %121
  %125 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %126 = load i32*, i32** %7, align 8
  %127 = call i32 @CnReleaseSocket(%struct.TYPE_19__* %125, i32* %126)
  br label %128

128:                                              ; preds = %124, %121
  br label %129

129:                                              ; preds = %128, %117
  br label %130

130:                                              ; preds = %129, %107
  br label %131

131:                                              ; preds = %130
  br label %132

132:                                              ; preds = %131, %95
  br label %133

133:                                              ; preds = %132, %88
  br label %134

134:                                              ; preds = %133, %81
  br label %135

135:                                              ; preds = %134, %74
  br label %136

136:                                              ; preds = %135, %67
  br label %137

137:                                              ; preds = %136, %60
  br label %138

138:                                              ; preds = %137, %53
  br label %139

139:                                              ; preds = %138, %41
  %140 = load i32*, i32** %7, align 8
  %141 = call i32 @FreePack(i32* %140)
  %142 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %142)
  br label %143

143:                                              ; preds = %139, %36
  br label %144

144:                                              ; preds = %143, %19
  %145 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %146 = call i32 @Disconnect(%struct.TYPE_19__* %145)
  %147 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %148 = call i32 @ReleaseSock(%struct.TYPE_19__* %147)
  br label %149

149:                                              ; preds = %144, %18
  ret void
}

declare dso_local i32 @AddRef(i32) #1

declare dso_local i32 @NoticeThreadInit(i32*) #1

declare dso_local i32* @RecvPack(%struct.TYPE_19__*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @PackGetStr(i32*, i8*, i8*, i32) #1

declare dso_local i64 @StrCmpi(i8*, i8*) #1

declare dso_local i32 @CnStatusPrinter(%struct.TYPE_19__*, i32*) #1

declare dso_local i32 @CnConnectErrorDlg(%struct.TYPE_19__*, i32*) #1

declare dso_local i32 @CnMsgDlg(%struct.TYPE_19__*, i32*) #1

declare dso_local i32 @CnNicInfo(%struct.TYPE_19__*, i32*) #1

declare dso_local i32 @CnPasswordDlg(%struct.TYPE_19__*, i32*) #1

declare dso_local i32 @CnSecureSign(%struct.TYPE_19__*, i32*) #1

declare dso_local i32 @CnCheckCert(%struct.TYPE_19__*, i32*) #1

; Function Attrs: noreturn
declare dso_local i32 @_exit(i32) #3

declare dso_local i32* @NewPack(...) #1

declare dso_local i32 @SendPack(%struct.TYPE_19__*, i32*) #1

declare dso_local i32 @FreePack(i32*) #1

declare dso_local i32 @CnExecDriverInstaller(%struct.TYPE_19__*, i32*) #1

declare dso_local i32 @CnReleaseSocket(%struct.TYPE_19__*, i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @Disconnect(%struct.TYPE_19__*) #1

declare dso_local i32 @ReleaseSock(%struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
