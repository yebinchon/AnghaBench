; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-common/cdrom/extr_cdrom.c_cdrom_print_sense_data.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-common/cdrom/extr_cdrom.c_cdrom_print_sense_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [45 x i8] c"[CDROM] Sense data buffer length too small.\0A\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"[CDROM] Sense Data: \00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%02X \00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"[CDROM] CURRENT ERROR:\0A\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"[CDROM] DEFERRED ERROR:\0A\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"NO SENSE\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"RECOVERED ERROR\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"NOT READY\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"MEDIUM ERROR\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"HARDWARE ERROR\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"ILLEGAL REQUEST\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"UNIT ATTENTION\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"DATA PROTECT\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"BLANK CHECK\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"VENDOR SPECIFIC\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"COPY ABORTED\00", align 1
@.str.17 = private unnamed_addr constant [16 x i8] c"ABORTED COMMAND\00", align 1
@.str.18 = private unnamed_addr constant [16 x i8] c"VOLUME OVERFLOW\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"MISCOMPARE\00", align 1
@.str.20 = private unnamed_addr constant [30 x i8] c"[CDROM] Sense Key: %02X (%s)\0A\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"null\00", align 1
@.str.22 = private unnamed_addr constant [19 x i8] c"[CDROM] ASC: %02X\0A\00", align 1
@.str.23 = private unnamed_addr constant [20 x i8] c"[CDROM] ASCQ: %02X\0A\00", align 1
@.str.24 = private unnamed_addr constant [67 x i8] c"[CDROM] Description: LOGICAL UNIT IS IN PROCESS OF BECOMING READY\0A\00", align 1
@.str.25 = private unnamed_addr constant [41 x i8] c"[CDROM] Description: MEDIUM NOT PRESENT\0A\00", align 1
@.str.26 = private unnamed_addr constant [52 x i8] c"[CDROM] Description: MEDIUM NOT PRESENT - LOADABLE\0A\00", align 1
@.str.27 = private unnamed_addr constant [55 x i8] c"[CDROM] Description: MEDIUM NOT PRESENT - TRAY CLOSED\0A\00", align 1
@.str.28 = private unnamed_addr constant [53 x i8] c"[CDROM] Description: MEDIUM NOT PRESENT - TRAY OPEN\0A\00", align 1
@.str.29 = private unnamed_addr constant [47 x i8] c"[CDROM] Description: L-EC UNCORRECTABLE ERROR\0A\00", align 1
@.str.30 = private unnamed_addr constant [53 x i8] c"[CDROM] Description: INVALID COMMAND OPERATION CODE\0A\00", align 1
@.str.31 = private unnamed_addr constant [43 x i8] c"[CDROM] Description: INVALID FIELD IN CDB\0A\00", align 1
@.str.32 = private unnamed_addr constant [54 x i8] c"[CDROM] Description: INVALID FIELD IN PARAMETER LIST\0A\00", align 1
@.str.33 = private unnamed_addr constant [73 x i8] c"[CDROM] Description: NOT READY TO READY CHANGE, MEDIUM MAY HAVE CHANGED\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64)* @cdrom_print_sense_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cdrom_print_sense_data(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  store i8* null, i8** %6, align 8
  %10 = load i64, i64* %4, align 8
  %11 = icmp ult i64 %10, 16
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* @stdout, align 4
  %15 = call i32 @fflush(i32 %14)
  br label %183

16:                                               ; preds = %2
  %17 = load i8*, i8** %3, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 2
  %19 = load i8, i8* %18, align 1
  %20 = zext i8 %19 to i32
  %21 = and i32 %20, 15
  %22 = trunc i32 %21 to i8
  store i8 %22, i8* %7, align 1
  %23 = load i8*, i8** %3, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 12
  %25 = load i8, i8* %24, align 1
  store i8 %25, i8* %8, align 1
  %26 = load i8*, i8** %3, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 13
  %28 = load i8, i8* %27, align 1
  store i8 %28, i8* %9, align 1
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %30

30:                                               ; preds = %43, %16
  %31 = load i32, i32* %5, align 4
  %32 = load i64, i64* %4, align 8
  %33 = call i32 @MIN(i64 %32, i32 16)
  %34 = icmp ult i32 %31, %33
  br i1 %34, label %35, label %46

35:                                               ; preds = %30
  %36 = load i8*, i8** %3, align 8
  %37 = load i32, i32* %5, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds i8, i8* %36, i64 %38
  %40 = load i8, i8* %39, align 1
  %41 = zext i8 %40 to i32
  %42 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %41)
  br label %43

43:                                               ; preds = %35
  %44 = load i32, i32* %5, align 4
  %45 = add i32 %44, 1
  store i32 %45, i32* %5, align 4
  br label %30

46:                                               ; preds = %30
  %47 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %48 = load i8*, i8** %3, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 0
  %50 = load i8, i8* %49, align 1
  %51 = zext i8 %50 to i32
  %52 = icmp eq i32 %51, 112
  br i1 %52, label %53, label %55

53:                                               ; preds = %46
  %54 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  br label %55

55:                                               ; preds = %53, %46
  %56 = load i8*, i8** %3, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 0
  %58 = load i8, i8* %57, align 1
  %59 = zext i8 %58 to i32
  %60 = icmp eq i32 %59, 113
  br i1 %60, label %61, label %63

61:                                               ; preds = %55
  %62 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  br label %63

63:                                               ; preds = %61, %55
  %64 = load i8, i8* %7, align 1
  %65 = zext i8 %64 to i32
  switch i32 %65, label %80 [
    i32 0, label %66
    i32 1, label %67
    i32 2, label %68
    i32 3, label %69
    i32 4, label %70
    i32 5, label %71
    i32 6, label %72
    i32 7, label %73
    i32 8, label %74
    i32 9, label %75
    i32 10, label %76
    i32 11, label %77
    i32 13, label %78
    i32 14, label %79
  ]

66:                                               ; preds = %63
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i8** %6, align 8
  br label %80

67:                                               ; preds = %63
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i8** %6, align 8
  br label %80

68:                                               ; preds = %63
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8** %6, align 8
  br label %80

69:                                               ; preds = %63
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0), i8** %6, align 8
  br label %80

70:                                               ; preds = %63
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0), i8** %6, align 8
  br label %80

71:                                               ; preds = %63
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i8** %6, align 8
  br label %80

72:                                               ; preds = %63
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0), i8** %6, align 8
  br label %80

73:                                               ; preds = %63
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i64 0, i64 0), i8** %6, align 8
  br label %80

74:                                               ; preds = %63
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i64 0, i64 0), i8** %6, align 8
  br label %80

75:                                               ; preds = %63
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i64 0, i64 0), i8** %6, align 8
  br label %80

76:                                               ; preds = %63
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i64 0, i64 0), i8** %6, align 8
  br label %80

77:                                               ; preds = %63
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i64 0, i64 0), i8** %6, align 8
  br label %80

78:                                               ; preds = %63
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i8** %6, align 8
  br label %80

79:                                               ; preds = %63
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i64 0, i64 0), i8** %6, align 8
  br label %80

80:                                               ; preds = %63, %79, %78, %77, %76, %75, %74, %73, %72, %71, %70, %69, %68, %67, %66
  %81 = load i8, i8* %7, align 1
  %82 = zext i8 %81 to i32
  %83 = load i8*, i8** %6, align 8
  %84 = icmp ne i8* %83, null
  br i1 %84, label %85, label %87

85:                                               ; preds = %80
  %86 = load i8*, i8** %6, align 8
  br label %88

87:                                               ; preds = %80
  br label %88

88:                                               ; preds = %87, %85
  %89 = phi i8* [ %86, %85 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i64 0, i64 0), %87 ]
  %90 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.20, i64 0, i64 0), i32 %82, i8* %89)
  %91 = load i8, i8* %8, align 1
  %92 = zext i8 %91 to i32
  %93 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.22, i64 0, i64 0), i32 %92)
  %94 = load i8, i8* %9, align 1
  %95 = zext i8 %94 to i32
  %96 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.23, i64 0, i64 0), i32 %95)
  %97 = load i8, i8* %7, align 1
  %98 = zext i8 %97 to i32
  switch i32 %98, label %179 [
    i32 2, label %99
    i32 3, label %124
    i32 5, label %135
    i32 6, label %168
  ]

99:                                               ; preds = %88
  %100 = load i8, i8* %8, align 1
  %101 = zext i8 %100 to i32
  switch i32 %101, label %122 [
    i32 4, label %102
    i32 58, label %109
  ]

102:                                              ; preds = %99
  %103 = load i8, i8* %9, align 1
  %104 = zext i8 %103 to i32
  switch i32 %104, label %107 [
    i32 1, label %105
  ]

105:                                              ; preds = %102
  %106 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.24, i64 0, i64 0))
  br label %108

107:                                              ; preds = %102
  br label %108

108:                                              ; preds = %107, %105
  br label %123

109:                                              ; preds = %99
  %110 = load i8, i8* %9, align 1
  %111 = zext i8 %110 to i32
  switch i32 %111, label %120 [
    i32 0, label %112
    i32 3, label %114
    i32 1, label %116
    i32 2, label %118
  ]

112:                                              ; preds = %109
  %113 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.25, i64 0, i64 0))
  br label %121

114:                                              ; preds = %109
  %115 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.26, i64 0, i64 0))
  br label %121

116:                                              ; preds = %109
  %117 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.27, i64 0, i64 0))
  br label %121

118:                                              ; preds = %109
  %119 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.28, i64 0, i64 0))
  br label %121

120:                                              ; preds = %109
  br label %121

121:                                              ; preds = %120, %118, %116, %114, %112
  br label %123

122:                                              ; preds = %99
  br label %123

123:                                              ; preds = %122, %121, %108
  br label %124

124:                                              ; preds = %88, %123
  %125 = load i8, i8* %8, align 1
  %126 = zext i8 %125 to i32
  %127 = icmp eq i32 %126, 17
  br i1 %127, label %128, label %134

128:                                              ; preds = %124
  %129 = load i8, i8* %9, align 1
  %130 = zext i8 %129 to i32
  %131 = icmp eq i32 %130, 5
  br i1 %131, label %132, label %134

132:                                              ; preds = %128
  %133 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.29, i64 0, i64 0))
  br label %134

134:                                              ; preds = %132, %128, %124
  br label %180

135:                                              ; preds = %88
  %136 = load i8, i8* %8, align 1
  %137 = zext i8 %136 to i32
  %138 = icmp eq i32 %137, 32
  br i1 %138, label %139, label %145

139:                                              ; preds = %135
  %140 = load i8, i8* %9, align 1
  %141 = zext i8 %140 to i32
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %145

143:                                              ; preds = %139
  %144 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.30, i64 0, i64 0))
  br label %167

145:                                              ; preds = %139, %135
  %146 = load i8, i8* %8, align 1
  %147 = zext i8 %146 to i32
  %148 = icmp eq i32 %147, 36
  br i1 %148, label %149, label %155

149:                                              ; preds = %145
  %150 = load i8, i8* %9, align 1
  %151 = zext i8 %150 to i32
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %153, label %155

153:                                              ; preds = %149
  %154 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.31, i64 0, i64 0))
  br label %166

155:                                              ; preds = %149, %145
  %156 = load i8, i8* %8, align 1
  %157 = zext i8 %156 to i32
  %158 = icmp eq i32 %157, 38
  br i1 %158, label %159, label %165

159:                                              ; preds = %155
  %160 = load i8, i8* %9, align 1
  %161 = zext i8 %160 to i32
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %163, label %165

163:                                              ; preds = %159
  %164 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.32, i64 0, i64 0))
  br label %165

165:                                              ; preds = %163, %159, %155
  br label %166

166:                                              ; preds = %165, %153
  br label %167

167:                                              ; preds = %166, %143
  br label %180

168:                                              ; preds = %88
  %169 = load i8, i8* %8, align 1
  %170 = zext i8 %169 to i32
  %171 = icmp eq i32 %170, 40
  br i1 %171, label %172, label %178

172:                                              ; preds = %168
  %173 = load i8, i8* %9, align 1
  %174 = zext i8 %173 to i32
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %176, label %178

176:                                              ; preds = %172
  %177 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.33, i64 0, i64 0))
  br label %178

178:                                              ; preds = %176, %172, %168
  br label %180

179:                                              ; preds = %88
  br label %180

180:                                              ; preds = %179, %178, %167, %134
  %181 = load i32, i32* @stdout, align 4
  %182 = call i32 @fflush(i32 %181)
  br label %183

183:                                              ; preds = %180, %12
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @MIN(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
