; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Server.c_SiCalledTask.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Server.c_SiCalledTask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* }

@.str = private unnamed_addr constant [5 x i8] c"noop\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"Task Called: [%s].\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"createhub\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"deletehub\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"enumhub\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"updatehub\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"createticket\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"enumnat\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"enumdhcp\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"getnatstatus\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"enumsession\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"deletesession\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"deletemactable\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"deleteiptable\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"enummactable\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"enumiptable\00", align 1
@.str.16 = private unnamed_addr constant [17 x i8] c"getsessionstatus\00", align 1
@.str.17 = private unnamed_addr constant [16 x i8] c"enumlogfilelist\00", align 1
@.str.18 = private unnamed_addr constant [12 x i8] c"readlogfile\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @SiCalledTask(%struct.TYPE_3__* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %11 = icmp eq %struct.TYPE_3__* %10, null
  br i1 %11, label %18, label %12

12:                                               ; preds = %3
  %13 = load i32*, i32** %6, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %12
  %16 = load i8*, i8** %7, align 8
  %17 = icmp eq i8* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %15, %12, %3
  store i32* null, i32** %4, align 8
  br label %193

19:                                               ; preds = %15
  store i32* null, i32** %8, align 8
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  store i32* %22, i32** %9, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = call i64 @StrCmpi(i8* %23, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %19
  %27 = call i32* (...) @NewPack()
  store i32* %27, i32** %8, align 8
  br label %191

28:                                               ; preds = %19
  %29 = load i8*, i8** %7, align 8
  %30 = call i32 @Debug(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8* %29)
  %31 = load i8*, i8** %7, align 8
  %32 = call i64 @StrCmpi(i8* %31, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %28
  %35 = load i32*, i32** %9, align 8
  %36 = load i32*, i32** %6, align 8
  %37 = call i32 @SiCalledCreateHub(i32* %35, i32* %36)
  %38 = call i32* (...) @NewPack()
  store i32* %38, i32** %8, align 8
  br label %190

39:                                               ; preds = %28
  %40 = load i8*, i8** %7, align 8
  %41 = call i64 @StrCmpi(i8* %40, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %39
  %44 = load i32*, i32** %9, align 8
  %45 = load i32*, i32** %6, align 8
  %46 = call i32 @SiCalledDeleteHub(i32* %44, i32* %45)
  %47 = call i32* (...) @NewPack()
  store i32* %47, i32** %8, align 8
  br label %189

48:                                               ; preds = %39
  %49 = load i8*, i8** %7, align 8
  %50 = call i64 @StrCmpi(i8* %49, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %48
  %53 = call i32* (...) @NewPack()
  store i32* %53, i32** %8, align 8
  %54 = load i32*, i32** %9, align 8
  %55 = load i32*, i32** %8, align 8
  %56 = load i32*, i32** %6, align 8
  %57 = call i32 @SiCalledEnumHub(i32* %54, i32* %55, i32* %56)
  br label %188

58:                                               ; preds = %48
  %59 = load i8*, i8** %7, align 8
  %60 = call i64 @StrCmpi(i8* %59, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %58
  %63 = load i32*, i32** %9, align 8
  %64 = load i32*, i32** %6, align 8
  %65 = call i32 @SiCalledUpdateHub(i32* %63, i32* %64)
  %66 = call i32* (...) @NewPack()
  store i32* %66, i32** %8, align 8
  br label %187

67:                                               ; preds = %58
  %68 = load i8*, i8** %7, align 8
  %69 = call i64 @StrCmpi(i8* %68, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0))
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %67
  %72 = load i32*, i32** %9, align 8
  %73 = load i32*, i32** %6, align 8
  %74 = call i32* @SiCalledCreateTicket(i32* %72, i32* %73)
  store i32* %74, i32** %8, align 8
  br label %186

75:                                               ; preds = %67
  %76 = load i8*, i8** %7, align 8
  %77 = call i64 @StrCmpi(i8* %76, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %75
  %80 = load i32*, i32** %9, align 8
  %81 = load i32*, i32** %6, align 8
  %82 = call i32* @SiCalledEnumNat(i32* %80, i32* %81)
  store i32* %82, i32** %8, align 8
  br label %185

83:                                               ; preds = %75
  %84 = load i8*, i8** %7, align 8
  %85 = call i64 @StrCmpi(i8* %84, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0))
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %83
  %88 = load i32*, i32** %9, align 8
  %89 = load i32*, i32** %6, align 8
  %90 = call i32* @SiCalledEnumDhcp(i32* %88, i32* %89)
  store i32* %90, i32** %8, align 8
  br label %184

91:                                               ; preds = %83
  %92 = load i8*, i8** %7, align 8
  %93 = call i64 @StrCmpi(i8* %92, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0))
  %94 = icmp eq i64 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %91
  %96 = load i32*, i32** %9, align 8
  %97 = load i32*, i32** %6, align 8
  %98 = call i32* @SiCalledGetNatStatus(i32* %96, i32* %97)
  store i32* %98, i32** %8, align 8
  br label %183

99:                                               ; preds = %91
  %100 = load i8*, i8** %7, align 8
  %101 = call i64 @StrCmpi(i8* %100, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0))
  %102 = icmp eq i64 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %99
  %104 = load i32*, i32** %9, align 8
  %105 = load i32*, i32** %6, align 8
  %106 = call i32* @SiCalledEnumSession(i32* %104, i32* %105)
  store i32* %106, i32** %8, align 8
  br label %182

107:                                              ; preds = %99
  %108 = load i8*, i8** %7, align 8
  %109 = call i64 @StrCmpi(i8* %108, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0))
  %110 = icmp eq i64 %109, 0
  br i1 %110, label %111, label %116

111:                                              ; preds = %107
  %112 = load i32*, i32** %9, align 8
  %113 = load i32*, i32** %6, align 8
  %114 = call i32 @SiCalledDeleteSession(i32* %112, i32* %113)
  %115 = call i32* (...) @NewPack()
  store i32* %115, i32** %8, align 8
  br label %181

116:                                              ; preds = %107
  %117 = load i8*, i8** %7, align 8
  %118 = call i64 @StrCmpi(i8* %117, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0))
  %119 = icmp eq i64 %118, 0
  br i1 %119, label %120, label %125

120:                                              ; preds = %116
  %121 = load i32*, i32** %9, align 8
  %122 = load i32*, i32** %6, align 8
  %123 = call i32 @SiCalledDeleteMacTable(i32* %121, i32* %122)
  %124 = call i32* (...) @NewPack()
  store i32* %124, i32** %8, align 8
  br label %180

125:                                              ; preds = %116
  %126 = load i8*, i8** %7, align 8
  %127 = call i64 @StrCmpi(i8* %126, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0))
  %128 = icmp eq i64 %127, 0
  br i1 %128, label %129, label %134

129:                                              ; preds = %125
  %130 = load i32*, i32** %9, align 8
  %131 = load i32*, i32** %6, align 8
  %132 = call i32 @SiCalledDeleteIpTable(i32* %130, i32* %131)
  %133 = call i32* (...) @NewPack()
  store i32* %133, i32** %8, align 8
  br label %179

134:                                              ; preds = %125
  %135 = load i8*, i8** %7, align 8
  %136 = call i64 @StrCmpi(i8* %135, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i64 0, i64 0))
  %137 = icmp eq i64 %136, 0
  br i1 %137, label %138, label %142

138:                                              ; preds = %134
  %139 = load i32*, i32** %9, align 8
  %140 = load i32*, i32** %6, align 8
  %141 = call i32* @SiCalledEnumMacTable(i32* %139, i32* %140)
  store i32* %141, i32** %8, align 8
  br label %178

142:                                              ; preds = %134
  %143 = load i8*, i8** %7, align 8
  %144 = call i64 @StrCmpi(i8* %143, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i64 0, i64 0))
  %145 = icmp eq i64 %144, 0
  br i1 %145, label %146, label %150

146:                                              ; preds = %142
  %147 = load i32*, i32** %9, align 8
  %148 = load i32*, i32** %6, align 8
  %149 = call i32* @SiCalledEnumIpTable(i32* %147, i32* %148)
  store i32* %149, i32** %8, align 8
  br label %177

150:                                              ; preds = %142
  %151 = load i8*, i8** %7, align 8
  %152 = call i64 @StrCmpi(i8* %151, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.16, i64 0, i64 0))
  %153 = icmp eq i64 %152, 0
  br i1 %153, label %154, label %158

154:                                              ; preds = %150
  %155 = load i32*, i32** %9, align 8
  %156 = load i32*, i32** %6, align 8
  %157 = call i32* @SiCalledGetSessionStatus(i32* %155, i32* %156)
  store i32* %157, i32** %8, align 8
  br label %176

158:                                              ; preds = %150
  %159 = load i8*, i8** %7, align 8
  %160 = call i64 @StrCmpi(i8* %159, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i64 0, i64 0))
  %161 = icmp eq i64 %160, 0
  br i1 %161, label %162, label %166

162:                                              ; preds = %158
  %163 = load i32*, i32** %9, align 8
  %164 = load i32*, i32** %6, align 8
  %165 = call i32* @SiCalledEnumLogFileList(i32* %163, i32* %164)
  store i32* %165, i32** %8, align 8
  br label %175

166:                                              ; preds = %158
  %167 = load i8*, i8** %7, align 8
  %168 = call i64 @StrCmpi(i8* %167, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i64 0, i64 0))
  %169 = icmp eq i64 %168, 0
  br i1 %169, label %170, label %174

170:                                              ; preds = %166
  %171 = load i32*, i32** %9, align 8
  %172 = load i32*, i32** %6, align 8
  %173 = call i32* @SiCalledReadLogFile(i32* %171, i32* %172)
  store i32* %173, i32** %8, align 8
  br label %174

174:                                              ; preds = %170, %166
  br label %175

175:                                              ; preds = %174, %162
  br label %176

176:                                              ; preds = %175, %154
  br label %177

177:                                              ; preds = %176, %146
  br label %178

178:                                              ; preds = %177, %138
  br label %179

179:                                              ; preds = %178, %129
  br label %180

180:                                              ; preds = %179, %120
  br label %181

181:                                              ; preds = %180, %111
  br label %182

182:                                              ; preds = %181, %103
  br label %183

183:                                              ; preds = %182, %95
  br label %184

184:                                              ; preds = %183, %87
  br label %185

185:                                              ; preds = %184, %79
  br label %186

186:                                              ; preds = %185, %71
  br label %187

187:                                              ; preds = %186, %62
  br label %188

188:                                              ; preds = %187, %52
  br label %189

189:                                              ; preds = %188, %43
  br label %190

190:                                              ; preds = %189, %34
  br label %191

191:                                              ; preds = %190, %26
  %192 = load i32*, i32** %8, align 8
  store i32* %192, i32** %4, align 8
  br label %193

193:                                              ; preds = %191, %18
  %194 = load i32*, i32** %4, align 8
  ret i32* %194
}

declare dso_local i64 @StrCmpi(i8*, i8*) #1

declare dso_local i32* @NewPack(...) #1

declare dso_local i32 @Debug(i8*, i8*) #1

declare dso_local i32 @SiCalledCreateHub(i32*, i32*) #1

declare dso_local i32 @SiCalledDeleteHub(i32*, i32*) #1

declare dso_local i32 @SiCalledEnumHub(i32*, i32*, i32*) #1

declare dso_local i32 @SiCalledUpdateHub(i32*, i32*) #1

declare dso_local i32* @SiCalledCreateTicket(i32*, i32*) #1

declare dso_local i32* @SiCalledEnumNat(i32*, i32*) #1

declare dso_local i32* @SiCalledEnumDhcp(i32*, i32*) #1

declare dso_local i32* @SiCalledGetNatStatus(i32*, i32*) #1

declare dso_local i32* @SiCalledEnumSession(i32*, i32*) #1

declare dso_local i32 @SiCalledDeleteSession(i32*, i32*) #1

declare dso_local i32 @SiCalledDeleteMacTable(i32*, i32*) #1

declare dso_local i32 @SiCalledDeleteIpTable(i32*, i32*) #1

declare dso_local i32* @SiCalledEnumMacTable(i32*, i32*) #1

declare dso_local i32* @SiCalledEnumIpTable(i32*, i32*) #1

declare dso_local i32* @SiCalledGetSessionStatus(i32*, i32*) #1

declare dso_local i32* @SiCalledEnumLogFileList(i32*, i32*) #1

declare dso_local i32* @SiCalledReadLogFile(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
