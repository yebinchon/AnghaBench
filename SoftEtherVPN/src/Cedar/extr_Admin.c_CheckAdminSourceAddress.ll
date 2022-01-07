; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Admin.c_CheckAdminSourceAddress.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Admin.c_CheckAdminSourceAddress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32, i8** }

@ADMINIP_TXT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"//\00", align 1
@INFINITE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"#\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c" \09\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"*\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CheckAdminSourceAddress(%struct.TYPE_7__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %8, align 4
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %16 = icmp eq %struct.TYPE_7__* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %160

18:                                               ; preds = %2
  %19 = load i32, i32* @ADMINIP_TXT, align 4
  %20 = call i32* @ReadDump(i32 %19)
  store i32* %20, i32** %6, align 8
  %21 = load i32*, i32** %6, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  store i32 1, i32* %3, align 4
  br label %160

24:                                               ; preds = %18
  br label %25

25:                                               ; preds = %24, %153
  %26 = load i32*, i32** %6, align 8
  %27 = call i8* @CfgReadNextLine(i32* %26)
  store i8* %27, i8** %7, align 8
  %28 = load i8*, i8** %7, align 8
  %29 = icmp eq i8* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  br label %156

31:                                               ; preds = %25
  %32 = load i8*, i8** %7, align 8
  %33 = call i32 @Trim(i8* %32)
  %34 = load i8*, i8** %7, align 8
  %35 = call i64 @SearchStrEx(i8* %34, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 0, i32 0)
  store i64 %35, i64* %9, align 8
  %36 = load i64, i64* %9, align 8
  %37 = load i64, i64* @INFINITE, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %31
  %40 = load i8*, i8** %7, align 8
  %41 = load i64, i64* %9, align 8
  %42 = getelementptr inbounds i8, i8* %40, i64 %41
  store i8 0, i8* %42, align 1
  br label %43

43:                                               ; preds = %39, %31
  %44 = load i8*, i8** %7, align 8
  %45 = call i64 @SearchStrEx(i8* %44, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 0, i32 0)
  store i64 %45, i64* %9, align 8
  %46 = load i64, i64* %9, align 8
  %47 = load i64, i64* @INFINITE, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %43
  %50 = load i8*, i8** %7, align 8
  %51 = load i64, i64* %9, align 8
  %52 = getelementptr inbounds i8, i8* %50, i64 %51
  store i8 0, i8* %52, align 1
  br label %53

53:                                               ; preds = %49, %43
  %54 = load i8*, i8** %7, align 8
  %55 = call i32 @Trim(i8* %54)
  %56 = load i8*, i8** %7, align 8
  %57 = call %struct.TYPE_6__* @ParseToken(i8* %56, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  store %struct.TYPE_6__* %57, %struct.TYPE_6__** %10, align 8
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %59 = icmp ne %struct.TYPE_6__* %58, null
  br i1 %59, label %60, label %153

60:                                               ; preds = %53
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp sge i32 %63, 1
  br i1 %64, label %65, label %150

65:                                               ; preds = %60
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp eq i32 %68, 1
  br i1 %69, label %79, label %70

70:                                               ; preds = %65
  %71 = load i8*, i8** %5, align 8
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 1
  %74 = load i8**, i8*** %73, align 8
  %75 = getelementptr inbounds i8*, i8** %74, i64 1
  %76 = load i8*, i8** %75, align 8
  %77 = call i64 @StrCmpi(i8* %71, i8* %76)
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %79, label %149

79:                                               ; preds = %70, %65
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 1
  %82 = load i8**, i8*** %81, align 8
  %83 = getelementptr inbounds i8*, i8** %82, i64 0
  %84 = load i8*, i8** %83, align 8
  %85 = call i64 @ParseIpAndMask46(i8* %84, i32* %11, i32* %12)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %123

87:                                               ; preds = %79
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 0
  %90 = call i64 @IsIP4(i32* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %104

92:                                               ; preds = %87
  %93 = call i64 @IsIP4(i32* %11)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %104

95:                                               ; preds = %92
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 0
  %98 = call i32 @IPAnd4(i32* %13, i32* %97, i32* %12)
  %99 = call i32 @IPAnd4(i32* %14, i32* %11, i32* %12)
  %100 = call i64 @CmpIpAddr(i32* %13, i32* %14)
  %101 = icmp eq i64 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %95
  store i32 1, i32* %8, align 4
  br label %103

103:                                              ; preds = %102, %95
  br label %122

104:                                              ; preds = %92, %87
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 0
  %107 = call i64 @IsIP6(i32* %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %121

109:                                              ; preds = %104
  %110 = call i64 @IsIP6(i32* %11)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %121

112:                                              ; preds = %109
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 0
  %115 = call i32 @IPAnd6(i32* %13, i32* %114, i32* %12)
  %116 = call i32 @IPAnd6(i32* %14, i32* %11, i32* %12)
  %117 = call i64 @CmpIpAddr(i32* %13, i32* %14)
  %118 = icmp eq i64 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %112
  store i32 1, i32* %8, align 4
  br label %120

120:                                              ; preds = %119, %112
  br label %121

121:                                              ; preds = %120, %109, %104
  br label %122

122:                                              ; preds = %121, %103
  br label %139

123:                                              ; preds = %79
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 1
  %126 = load i8**, i8*** %125, align 8
  %127 = getelementptr inbounds i8*, i8** %126, i64 0
  %128 = load i8*, i8** %127, align 8
  %129 = call i64 @StrToIP(i32* %11, i8* %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %138

131:                                              ; preds = %123
  %132 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 0
  %134 = call i64 @CmpIpAddr(i32* %133, i32* %11)
  %135 = icmp eq i64 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %131
  store i32 1, i32* %8, align 4
  br label %137

137:                                              ; preds = %136, %131
  br label %138

138:                                              ; preds = %137, %123
  br label %139

139:                                              ; preds = %138, %122
  %140 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 1
  %142 = load i8**, i8*** %141, align 8
  %143 = getelementptr inbounds i8*, i8** %142, i64 0
  %144 = load i8*, i8** %143, align 8
  %145 = call i64 @StrCmpi(i8* %144, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %146 = icmp eq i64 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %139
  store i32 1, i32* %8, align 4
  br label %148

148:                                              ; preds = %147, %139
  br label %149

149:                                              ; preds = %148, %70
  br label %150

150:                                              ; preds = %149, %60
  %151 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %152 = call i32 @FreeToken(%struct.TYPE_6__* %151)
  br label %153

153:                                              ; preds = %150, %53
  %154 = load i8*, i8** %7, align 8
  %155 = call i32 @Free(i8* %154)
  br label %25

156:                                              ; preds = %30
  %157 = load i32*, i32** %6, align 8
  %158 = call i32 @FreeBuf(i32* %157)
  %159 = load i32, i32* %8, align 4
  store i32 %159, i32* %3, align 4
  br label %160

160:                                              ; preds = %156, %23, %17
  %161 = load i32, i32* %3, align 4
  ret i32 %161
}

declare dso_local i32* @ReadDump(i32) #1

declare dso_local i8* @CfgReadNextLine(i32*) #1

declare dso_local i32 @Trim(i8*) #1

declare dso_local i64 @SearchStrEx(i8*, i8*, i32, i32) #1

declare dso_local %struct.TYPE_6__* @ParseToken(i8*, i8*) #1

declare dso_local i64 @StrCmpi(i8*, i8*) #1

declare dso_local i64 @ParseIpAndMask46(i8*, i32*, i32*) #1

declare dso_local i64 @IsIP4(i32*) #1

declare dso_local i32 @IPAnd4(i32*, i32*, i32*) #1

declare dso_local i64 @CmpIpAddr(i32*, i32*) #1

declare dso_local i64 @IsIP6(i32*) #1

declare dso_local i32 @IPAnd6(i32*, i32*, i32*) #1

declare dso_local i64 @StrToIP(i32*, i8*) #1

declare dso_local i32 @FreeToken(%struct.TYPE_6__*) #1

declare dso_local i32 @Free(i8*) #1

declare dso_local i32 @FreeBuf(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
