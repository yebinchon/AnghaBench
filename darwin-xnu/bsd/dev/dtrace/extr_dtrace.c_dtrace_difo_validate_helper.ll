; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/dev/dtrace/extr_dtrace.c_dtrace_difo_validate_helper.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/dev/dtrace/extr_dtrace.c_dtrace_difo_validate_helper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32* }

@DIF_VAR_OTHER_UBASE = common dso_local global i64 0, align 8
@DIF_VAR_ARG0 = common dso_local global i64 0, align 8
@DIF_VAR_ARG9 = common dso_local global i64 0, align 8
@DIF_VAR_CURTHREAD = common dso_local global i64 0, align 8
@DIF_VAR_PID = common dso_local global i64 0, align 8
@DIF_VAR_PPID = common dso_local global i64 0, align 8
@DIF_VAR_TID = common dso_local global i64 0, align 8
@DIF_VAR_EXECNAME = common dso_local global i64 0, align 8
@DIF_VAR_ZONENAME = common dso_local global i64 0, align 8
@DIF_VAR_UID = common dso_local global i64 0, align 8
@DIF_VAR_GID = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"illegal variable %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"illegal dynamic variable load\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"illegal dynamic variable store\0A\00", align 1
@DIF_SUBR_ALLOCA = common dso_local global i64 0, align 8
@DIF_SUBR_BCOPY = common dso_local global i64 0, align 8
@DIF_SUBR_COPYIN = common dso_local global i64 0, align 8
@DIF_SUBR_COPYINTO = common dso_local global i64 0, align 8
@DIF_SUBR_COPYINSTR = common dso_local global i64 0, align 8
@DIF_SUBR_INDEX = common dso_local global i64 0, align 8
@DIF_SUBR_INET_NTOA = common dso_local global i64 0, align 8
@DIF_SUBR_INET_NTOA6 = common dso_local global i64 0, align 8
@DIF_SUBR_INET_NTOP = common dso_local global i64 0, align 8
@DIF_SUBR_LLTOSTR = common dso_local global i64 0, align 8
@DIF_SUBR_RINDEX = common dso_local global i64 0, align 8
@DIF_SUBR_STRCHR = common dso_local global i64 0, align 8
@DIF_SUBR_STRJOIN = common dso_local global i64 0, align 8
@DIF_SUBR_STRRCHR = common dso_local global i64 0, align 8
@DIF_SUBR_STRSTR = common dso_local global i64 0, align 8
@DIF_SUBR_KDEBUG_TRACE = common dso_local global i64 0, align 8
@DIF_SUBR_KDEBUG_TRACE_STRING = common dso_local global i64 0, align 8
@DIF_SUBR_HTONS = common dso_local global i64 0, align 8
@DIF_SUBR_HTONL = common dso_local global i64 0, align 8
@DIF_SUBR_HTONLL = common dso_local global i64 0, align 8
@DIF_SUBR_NTOHS = common dso_local global i64 0, align 8
@DIF_SUBR_NTOHL = common dso_local global i64 0, align 8
@DIF_SUBR_NTOHLL = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [17 x i8] c"invalid subr %u\0A\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"invalid opcode %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @dtrace_difo_validate_helper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dtrace_difo_validate_helper(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i32 (i64, i8*, ...)*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  store i32 (i64, i8*, ...)* bitcast (i32 (i64, i8*)* @dtrace_difo_err to i32 (i64, i8*, ...)*), i32 (i64, i8*, ...)** %3, align 8
  store i32 0, i32* %4, align 4
  store i64 0, i64* %5, align 8
  br label %10

10:                                               ; preds = %206, %1
  %11 = load i64, i64* %5, align 8
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ult i64 %11, %14
  br i1 %15, label %16, label %209

16:                                               ; preds = %10
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = load i64, i64* %5, align 8
  %21 = getelementptr inbounds i32, i32* %19, i64 %20
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = call i64 @DIF_INSTR_VAR(i32 %23)
  store i64 %24, i64* %7, align 8
  %25 = load i32, i32* %6, align 4
  %26 = call i64 @DIF_INSTR_SUBR(i32 %25)
  store i64 %26, i64* %8, align 8
  %27 = load i32, i32* %6, align 4
  %28 = call i64 @DIF_INSTR_OP(i32 %27)
  store i64 %28, i64* %9, align 8
  %29 = load i64, i64* %9, align 8
  switch i64 %29, label %197 [
    i64 168, label %30
    i64 128, label %30
    i64 195, label %30
    i64 152, label %30
    i64 149, label %30
    i64 151, label %30
    i64 139, label %30
    i64 197, label %30
    i64 171, label %30
    i64 155, label %30
    i64 137, label %30
    i64 150, label %30
    i64 129, label %30
    i64 181, label %30
    i64 169, label %30
    i64 172, label %30
    i64 163, label %30
    i64 162, label %30
    i64 161, label %30
    i64 160, label %30
    i64 159, label %30
    i64 158, label %30
    i64 157, label %30
    i64 136, label %30
    i64 135, label %30
    i64 134, label %30
    i64 133, label %30
    i64 132, label %30
    i64 131, label %30
    i64 130, label %30
    i64 148, label %30
    i64 145, label %30
    i64 141, label %30
    i64 140, label %30
    i64 196, label %30
    i64 182, label %30
    i64 156, label %30
    i64 138, label %30
    i64 194, label %30
    i64 193, label %30
    i64 184, label %30
    i64 192, label %30
    i64 189, label %30
    i64 191, label %30
    i64 190, label %30
    i64 188, label %30
    i64 185, label %30
    i64 187, label %30
    i64 186, label %30
    i64 164, label %30
    i64 170, label %30
    i64 167, label %30
    i64 180, label %30
    i64 153, label %30
    i64 154, label %30
    i64 179, label %30
    i64 176, label %30
    i64 146, label %30
    i64 144, label %30
    i64 166, label %30
    i64 165, label %30
    i64 177, label %31
    i64 175, label %85
    i64 173, label %85
    i64 178, label %85
    i64 174, label %85
    i64 142, label %91
    i64 147, label %91
    i64 143, label %91
    i64 183, label %97
  ]

30:                                               ; preds = %16, %16, %16, %16, %16, %16, %16, %16, %16, %16, %16, %16, %16, %16, %16, %16, %16, %16, %16, %16, %16, %16, %16, %16, %16, %16, %16, %16, %16, %16, %16, %16, %16, %16, %16, %16, %16, %16, %16, %16, %16, %16, %16, %16, %16, %16, %16, %16, %16, %16, %16, %16, %16, %16, %16, %16, %16, %16, %16, %16, %16
  br label %205

31:                                               ; preds = %16
  %32 = load i64, i64* %7, align 8
  %33 = load i64, i64* @DIF_VAR_OTHER_UBASE, align 8
  %34 = icmp uge i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  br label %205

36:                                               ; preds = %31
  %37 = load i64, i64* %7, align 8
  %38 = load i64, i64* @DIF_VAR_ARG0, align 8
  %39 = icmp uge i64 %37, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %36
  %41 = load i64, i64* %7, align 8
  %42 = load i64, i64* @DIF_VAR_ARG9, align 8
  %43 = icmp ule i64 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  br label %205

45:                                               ; preds = %40, %36
  %46 = load i64, i64* %7, align 8
  %47 = load i64, i64* @DIF_VAR_CURTHREAD, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %77, label %49

49:                                               ; preds = %45
  %50 = load i64, i64* %7, align 8
  %51 = load i64, i64* @DIF_VAR_PID, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %77, label %53

53:                                               ; preds = %49
  %54 = load i64, i64* %7, align 8
  %55 = load i64, i64* @DIF_VAR_PPID, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %77, label %57

57:                                               ; preds = %53
  %58 = load i64, i64* %7, align 8
  %59 = load i64, i64* @DIF_VAR_TID, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %77, label %61

61:                                               ; preds = %57
  %62 = load i64, i64* %7, align 8
  %63 = load i64, i64* @DIF_VAR_EXECNAME, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %77, label %65

65:                                               ; preds = %61
  %66 = load i64, i64* %7, align 8
  %67 = load i64, i64* @DIF_VAR_ZONENAME, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %77, label %69

69:                                               ; preds = %65
  %70 = load i64, i64* %7, align 8
  %71 = load i64, i64* @DIF_VAR_UID, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %77, label %73

73:                                               ; preds = %69
  %74 = load i64, i64* %7, align 8
  %75 = load i64, i64* @DIF_VAR_GID, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %73, %69, %65, %61, %57, %53, %49, %45
  br label %205

78:                                               ; preds = %73
  %79 = load i32 (i64, i8*, ...)*, i32 (i64, i8*, ...)** %3, align 8
  %80 = load i64, i64* %5, align 8
  %81 = load i64, i64* %7, align 8
  %82 = call i32 (i64, i8*, ...) %79(i64 %80, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i64 %81)
  %83 = load i32, i32* %4, align 4
  %84 = add nsw i32 %83, %82
  store i32 %84, i32* %4, align 4
  br label %205

85:                                               ; preds = %16, %16, %16, %16
  %86 = load i32 (i64, i8*, ...)*, i32 (i64, i8*, ...)** %3, align 8
  %87 = load i64, i64* %5, align 8
  %88 = call i32 (i64, i8*, ...) %86(i64 %87, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %89 = load i32, i32* %4, align 4
  %90 = add nsw i32 %89, %88
  store i32 %90, i32* %4, align 4
  br label %205

91:                                               ; preds = %16, %16, %16
  %92 = load i32 (i64, i8*, ...)*, i32 (i64, i8*, ...)** %3, align 8
  %93 = load i64, i64* %5, align 8
  %94 = call i32 (i64, i8*, ...) %92(i64 %93, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %95 = load i32, i32* %4, align 4
  %96 = add nsw i32 %95, %94
  store i32 %96, i32* %4, align 4
  br label %205

97:                                               ; preds = %16
  %98 = load i64, i64* %8, align 8
  %99 = load i64, i64* @DIF_SUBR_ALLOCA, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %189, label %101

101:                                              ; preds = %97
  %102 = load i64, i64* %8, align 8
  %103 = load i64, i64* @DIF_SUBR_BCOPY, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %189, label %105

105:                                              ; preds = %101
  %106 = load i64, i64* %8, align 8
  %107 = load i64, i64* @DIF_SUBR_COPYIN, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %189, label %109

109:                                              ; preds = %105
  %110 = load i64, i64* %8, align 8
  %111 = load i64, i64* @DIF_SUBR_COPYINTO, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %189, label %113

113:                                              ; preds = %109
  %114 = load i64, i64* %8, align 8
  %115 = load i64, i64* @DIF_SUBR_COPYINSTR, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %189, label %117

117:                                              ; preds = %113
  %118 = load i64, i64* %8, align 8
  %119 = load i64, i64* @DIF_SUBR_INDEX, align 8
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %189, label %121

121:                                              ; preds = %117
  %122 = load i64, i64* %8, align 8
  %123 = load i64, i64* @DIF_SUBR_INET_NTOA, align 8
  %124 = icmp eq i64 %122, %123
  br i1 %124, label %189, label %125

125:                                              ; preds = %121
  %126 = load i64, i64* %8, align 8
  %127 = load i64, i64* @DIF_SUBR_INET_NTOA6, align 8
  %128 = icmp eq i64 %126, %127
  br i1 %128, label %189, label %129

129:                                              ; preds = %125
  %130 = load i64, i64* %8, align 8
  %131 = load i64, i64* @DIF_SUBR_INET_NTOP, align 8
  %132 = icmp eq i64 %130, %131
  br i1 %132, label %189, label %133

133:                                              ; preds = %129
  %134 = load i64, i64* %8, align 8
  %135 = load i64, i64* @DIF_SUBR_LLTOSTR, align 8
  %136 = icmp eq i64 %134, %135
  br i1 %136, label %189, label %137

137:                                              ; preds = %133
  %138 = load i64, i64* %8, align 8
  %139 = load i64, i64* @DIF_SUBR_RINDEX, align 8
  %140 = icmp eq i64 %138, %139
  br i1 %140, label %189, label %141

141:                                              ; preds = %137
  %142 = load i64, i64* %8, align 8
  %143 = load i64, i64* @DIF_SUBR_STRCHR, align 8
  %144 = icmp eq i64 %142, %143
  br i1 %144, label %189, label %145

145:                                              ; preds = %141
  %146 = load i64, i64* %8, align 8
  %147 = load i64, i64* @DIF_SUBR_STRJOIN, align 8
  %148 = icmp eq i64 %146, %147
  br i1 %148, label %189, label %149

149:                                              ; preds = %145
  %150 = load i64, i64* %8, align 8
  %151 = load i64, i64* @DIF_SUBR_STRRCHR, align 8
  %152 = icmp eq i64 %150, %151
  br i1 %152, label %189, label %153

153:                                              ; preds = %149
  %154 = load i64, i64* %8, align 8
  %155 = load i64, i64* @DIF_SUBR_STRSTR, align 8
  %156 = icmp eq i64 %154, %155
  br i1 %156, label %189, label %157

157:                                              ; preds = %153
  %158 = load i64, i64* %8, align 8
  %159 = load i64, i64* @DIF_SUBR_KDEBUG_TRACE, align 8
  %160 = icmp eq i64 %158, %159
  br i1 %160, label %189, label %161

161:                                              ; preds = %157
  %162 = load i64, i64* %8, align 8
  %163 = load i64, i64* @DIF_SUBR_KDEBUG_TRACE_STRING, align 8
  %164 = icmp eq i64 %162, %163
  br i1 %164, label %189, label %165

165:                                              ; preds = %161
  %166 = load i64, i64* %8, align 8
  %167 = load i64, i64* @DIF_SUBR_HTONS, align 8
  %168 = icmp eq i64 %166, %167
  br i1 %168, label %189, label %169

169:                                              ; preds = %165
  %170 = load i64, i64* %8, align 8
  %171 = load i64, i64* @DIF_SUBR_HTONL, align 8
  %172 = icmp eq i64 %170, %171
  br i1 %172, label %189, label %173

173:                                              ; preds = %169
  %174 = load i64, i64* %8, align 8
  %175 = load i64, i64* @DIF_SUBR_HTONLL, align 8
  %176 = icmp eq i64 %174, %175
  br i1 %176, label %189, label %177

177:                                              ; preds = %173
  %178 = load i64, i64* %8, align 8
  %179 = load i64, i64* @DIF_SUBR_NTOHS, align 8
  %180 = icmp eq i64 %178, %179
  br i1 %180, label %189, label %181

181:                                              ; preds = %177
  %182 = load i64, i64* %8, align 8
  %183 = load i64, i64* @DIF_SUBR_NTOHL, align 8
  %184 = icmp eq i64 %182, %183
  br i1 %184, label %189, label %185

185:                                              ; preds = %181
  %186 = load i64, i64* %8, align 8
  %187 = load i64, i64* @DIF_SUBR_NTOHLL, align 8
  %188 = icmp eq i64 %186, %187
  br i1 %188, label %189, label %190

189:                                              ; preds = %185, %181, %177, %173, %169, %165, %161, %157, %153, %149, %145, %141, %137, %133, %129, %125, %121, %117, %113, %109, %105, %101, %97
  br label %205

190:                                              ; preds = %185
  %191 = load i32 (i64, i8*, ...)*, i32 (i64, i8*, ...)** %3, align 8
  %192 = load i64, i64* %5, align 8
  %193 = load i64, i64* %8, align 8
  %194 = call i32 (i64, i8*, ...) %191(i64 %192, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i64 %193)
  %195 = load i32, i32* %4, align 4
  %196 = add nsw i32 %195, %194
  store i32 %196, i32* %4, align 4
  br label %205

197:                                              ; preds = %16
  %198 = load i32 (i64, i8*, ...)*, i32 (i64, i8*, ...)** %3, align 8
  %199 = load i64, i64* %5, align 8
  %200 = load i32, i32* %6, align 4
  %201 = call i64 @DIF_INSTR_OP(i32 %200)
  %202 = call i32 (i64, i8*, ...) %198(i64 %199, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i64 %201)
  %203 = load i32, i32* %4, align 4
  %204 = add nsw i32 %203, %202
  store i32 %204, i32* %4, align 4
  br label %205

205:                                              ; preds = %197, %190, %189, %91, %85, %78, %77, %44, %35, %30
  br label %206

206:                                              ; preds = %205
  %207 = load i64, i64* %5, align 8
  %208 = add i64 %207, 1
  store i64 %208, i64* %5, align 8
  br label %10

209:                                              ; preds = %10
  %210 = load i32, i32* %4, align 4
  ret i32 %210
}

declare dso_local i32 @dtrace_difo_err(i64, i8*) #1

declare dso_local i64 @DIF_INSTR_VAR(i32) #1

declare dso_local i64 @DIF_INSTR_SUBR(i32) #1

declare dso_local i64 @DIF_INSTR_OP(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
