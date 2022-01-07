; ModuleID = '/home/carl/AnghaBench/dsvpn/src/extr_os.c_shell_cmd.c'
source_filename = "/home/carl/AnghaBench/dsvpn/src/extr_os.c_shell_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ENOSPC = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"/dev/null\00", align 1
@O_WRONLY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @shell_cmd([2 x i8*]* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca [2 x i8*]*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [64 x i8*], align 16
  %9 = alloca [4096 x i8], align 16
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  store [2 x i8*]* %0, [2 x i8*]** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 0, i64* %11, align 8
  store i64 0, i64* %12, align 8
  store i32 1, i32* %17, align 4
  %20 = load i32, i32* @ENOSPC, align 4
  store i32 %20, i32* @errno, align 4
  store i64 0, i64* %13, align 8
  br label %21

21:                                               ; preds = %135, %3
  %22 = load i8*, i8** %6, align 8
  %23 = load i64, i64* %13, align 8
  %24 = getelementptr inbounds i8, i8* %22, i64 %23
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  store i32 %26, i32* %15, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %138

28:                                               ; preds = %21
  %29 = load i32, i32* %15, align 4
  %30 = trunc i32 %29 to i8
  %31 = call i64 @isspace(i8 zeroext %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %45

33:                                               ; preds = %28
  %34 = load i32, i32* %17, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %44, label %36

36:                                               ; preds = %33
  %37 = load i64, i64* %12, align 8
  %38 = icmp uge i64 %37, 4096
  br i1 %38, label %39, label %40

39:                                               ; preds = %36
  store i32 -1, i32* %4, align 4
  br label %188

40:                                               ; preds = %36
  %41 = load i64, i64* %12, align 8
  %42 = add i64 %41, 1
  store i64 %42, i64* %12, align 8
  %43 = getelementptr inbounds [4096 x i8], [4096 x i8]* %9, i64 0, i64 %41
  store i8 0, i8* %43, align 1
  br label %44

44:                                               ; preds = %40, %33
  store i32 1, i32* %17, align 4
  br label %135

45:                                               ; preds = %28
  %46 = load i32, i32* %17, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %58

48:                                               ; preds = %45
  %49 = load i64, i64* %11, align 8
  %50 = icmp uge i64 %49, 64
  br i1 %50, label %51, label %52

51:                                               ; preds = %48
  store i32 -1, i32* %4, align 4
  br label %188

52:                                               ; preds = %48
  %53 = load i64, i64* %12, align 8
  %54 = getelementptr inbounds [4096 x i8], [4096 x i8]* %9, i64 0, i64 %53
  %55 = load i64, i64* %11, align 8
  %56 = add i64 %55, 1
  store i64 %56, i64* %11, align 8
  %57 = getelementptr inbounds [64 x i8*], [64 x i8*]* %8, i64 0, i64 %55
  store i8* %54, i8** %57, align 8
  br label %58

58:                                               ; preds = %52, %45
  store i32 0, i32* %17, align 4
  store i64 0, i64* %14, align 8
  br label %59

59:                                               ; preds = %114, %58
  %60 = load [2 x i8*]*, [2 x i8*]** %5, align 8
  %61 = load i64, i64* %14, align 8
  %62 = getelementptr inbounds [2 x i8*], [2 x i8*]* %60, i64 %61
  %63 = getelementptr inbounds [2 x i8*], [2 x i8*]* %62, i64 0, i64 0
  %64 = load i8*, i8** %63, align 8
  %65 = icmp ne i8* %64, null
  br i1 %65, label %66, label %117

66:                                               ; preds = %59
  %67 = load [2 x i8*]*, [2 x i8*]** %5, align 8
  %68 = load i64, i64* %14, align 8
  %69 = getelementptr inbounds [2 x i8*], [2 x i8*]* %67, i64 %68
  %70 = getelementptr inbounds [2 x i8*], [2 x i8*]* %69, i64 0, i64 0
  %71 = load i8*, i8** %70, align 8
  %72 = call i64 @strlen(i8* %71)
  store i64 %72, i64* %18, align 8
  %73 = load [2 x i8*]*, [2 x i8*]** %5, align 8
  %74 = load i64, i64* %14, align 8
  %75 = getelementptr inbounds [2 x i8*], [2 x i8*]* %73, i64 %74
  %76 = getelementptr inbounds [2 x i8*], [2 x i8*]* %75, i64 0, i64 0
  %77 = load i8*, i8** %76, align 8
  %78 = load i8*, i8** %6, align 8
  %79 = load i64, i64* %13, align 8
  %80 = getelementptr inbounds i8, i8* %78, i64 %79
  %81 = load i64, i64* %18, align 8
  %82 = call i32 @strncmp(i8* %77, i8* %80, i64 %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %113, label %84

84:                                               ; preds = %66
  %85 = load [2 x i8*]*, [2 x i8*]** %5, align 8
  %86 = load i64, i64* %14, align 8
  %87 = getelementptr inbounds [2 x i8*], [2 x i8*]* %85, i64 %86
  %88 = getelementptr inbounds [2 x i8*], [2 x i8*]* %87, i64 0, i64 1
  %89 = load i8*, i8** %88, align 8
  %90 = call i64 @strlen(i8* %89)
  store i64 %90, i64* %19, align 8
  %91 = load i64, i64* %12, align 8
  %92 = sub i64 4096, %91
  %93 = load i64, i64* %19, align 8
  %94 = icmp ule i64 %92, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %84
  store i32 -1, i32* %4, align 4
  br label %188

96:                                               ; preds = %84
  %97 = load i64, i64* %12, align 8
  %98 = getelementptr inbounds [4096 x i8], [4096 x i8]* %9, i64 0, i64 %97
  %99 = load [2 x i8*]*, [2 x i8*]** %5, align 8
  %100 = load i64, i64* %14, align 8
  %101 = getelementptr inbounds [2 x i8*], [2 x i8*]* %99, i64 %100
  %102 = getelementptr inbounds [2 x i8*], [2 x i8*]* %101, i64 0, i64 1
  %103 = load i8*, i8** %102, align 8
  %104 = load i64, i64* %19, align 8
  %105 = call i32 @memcpy(i8* %98, i8* %103, i64 %104)
  %106 = load i64, i64* %18, align 8
  %107 = sub i64 %106, 1
  %108 = load i64, i64* %13, align 8
  %109 = add i64 %108, %107
  store i64 %109, i64* %13, align 8
  %110 = load i64, i64* %19, align 8
  %111 = load i64, i64* %12, align 8
  %112 = add i64 %111, %110
  store i64 %112, i64* %12, align 8
  br label %117

113:                                              ; preds = %66
  br label %114

114:                                              ; preds = %113
  %115 = load i64, i64* %14, align 8
  %116 = add i64 %115, 1
  store i64 %116, i64* %14, align 8
  br label %59

117:                                              ; preds = %96, %59
  %118 = load [2 x i8*]*, [2 x i8*]** %5, align 8
  %119 = load i64, i64* %14, align 8
  %120 = getelementptr inbounds [2 x i8*], [2 x i8*]* %118, i64 %119
  %121 = getelementptr inbounds [2 x i8*], [2 x i8*]* %120, i64 0, i64 0
  %122 = load i8*, i8** %121, align 8
  %123 = icmp eq i8* %122, null
  br i1 %123, label %124, label %134

124:                                              ; preds = %117
  %125 = load i64, i64* %12, align 8
  %126 = icmp uge i64 %125, 4096
  br i1 %126, label %127, label %128

127:                                              ; preds = %124
  store i32 -1, i32* %4, align 4
  br label %188

128:                                              ; preds = %124
  %129 = load i32, i32* %15, align 4
  %130 = trunc i32 %129 to i8
  %131 = load i64, i64* %12, align 8
  %132 = add i64 %131, 1
  store i64 %132, i64* %12, align 8
  %133 = getelementptr inbounds [4096 x i8], [4096 x i8]* %9, i64 0, i64 %131
  store i8 %130, i8* %133, align 1
  br label %134

134:                                              ; preds = %128, %117
  br label %135

135:                                              ; preds = %134, %44
  %136 = load i64, i64* %13, align 8
  %137 = add i64 %136, 1
  store i64 %137, i64* %13, align 8
  br label %21

138:                                              ; preds = %21
  %139 = load i32, i32* %17, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %149, label %141

141:                                              ; preds = %138
  %142 = load i64, i64* %12, align 8
  %143 = icmp uge i64 %142, 4096
  br i1 %143, label %144, label %145

144:                                              ; preds = %141
  store i32 -1, i32* %4, align 4
  br label %188

145:                                              ; preds = %141
  %146 = load i64, i64* %12, align 8
  %147 = add i64 %146, 1
  store i64 %147, i64* %12, align 8
  %148 = getelementptr inbounds [4096 x i8], [4096 x i8]* %9, i64 0, i64 %146
  store i8 0, i8* %148, align 1
  br label %149

149:                                              ; preds = %145, %138
  %150 = load i64, i64* %11, align 8
  %151 = icmp uge i64 %150, 64
  br i1 %151, label %152, label %153

152:                                              ; preds = %149
  store i32 -1, i32* %4, align 4
  br label %188

153:                                              ; preds = %149
  %154 = load i64, i64* %11, align 8
  %155 = getelementptr inbounds [64 x i8*], [64 x i8*]* %8, i64 0, i64 %154
  store i8* null, i8** %155, align 8
  %156 = call i64 (...) @fork()
  store i64 %156, i64* %10, align 8
  %157 = icmp eq i64 %156, -1
  br i1 %157, label %158, label %159

158:                                              ; preds = %153
  store i32 -1, i32* %4, align 4
  br label %188

159:                                              ; preds = %153
  %160 = load i64, i64* %10, align 8
  %161 = icmp eq i64 %160, 0
  br i1 %161, label %162, label %176

162:                                              ; preds = %159
  %163 = load i32, i32* %7, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %170

165:                                              ; preds = %162
  %166 = load i32, i32* @O_WRONLY, align 4
  %167 = call i32 @open(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %166)
  %168 = call i32 @dup2(i32 %167, i32 2)
  %169 = call i32 @dup2(i32 %168, i32 1)
  br label %170

170:                                              ; preds = %165, %162
  %171 = getelementptr inbounds [64 x i8*], [64 x i8*]* %8, i64 0, i64 0
  %172 = load i8*, i8** %171, align 16
  %173 = getelementptr inbounds [64 x i8*], [64 x i8*]* %8, i64 0, i64 0
  %174 = call i32 @execvp(i8* %172, i8** %173)
  %175 = call i32 @_exit(i32 1) #3
  unreachable

176:                                              ; preds = %159
  %177 = load i64, i64* %10, align 8
  %178 = call i64 @waitpid(i64 %177, i32* %16, i32 0)
  %179 = icmp eq i64 %178, -1
  br i1 %179, label %184, label %180

180:                                              ; preds = %176
  %181 = load i32, i32* %16, align 4
  %182 = call i32 @WIFEXITED(i32 %181)
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %185, label %184

184:                                              ; preds = %180, %176
  store i32 -1, i32* %4, align 4
  br label %188

185:                                              ; preds = %180
  br label %186

186:                                              ; preds = %185
  br label %187

187:                                              ; preds = %186
  store i32 0, i32* %4, align 4
  br label %188

188:                                              ; preds = %187, %184, %158, %152, %144, %127, %95, %51, %39
  %189 = load i32, i32* %4, align 4
  ret i32 %189
}

declare dso_local i64 @isspace(i8 zeroext) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @strncmp(i8*, i8*, i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i64 @fork(...) #1

declare dso_local i32 @dup2(i32, i32) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @execvp(i8*, i8**) #1

; Function Attrs: noreturn
declare dso_local i32 @_exit(i32) #2

declare dso_local i64 @waitpid(i64, i32*, i32) #1

declare dso_local i32 @WIFEXITED(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
